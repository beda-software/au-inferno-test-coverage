# frozen_string_literal: true

require 'json'
require 'colorize'
require_relative 'constants'

def read_json(file_path)
  JSON.parse(File.read(file_path))
rescue Errno::ENOENT
  puts "File not found: #{file_path}"
  exit 1
rescue JSON::ParserError
  puts "Invalid JSON in file: #{file_path}"
  exit 1
end

def get_fhir_action(request_type, url)
  map_simple_request = {
    'delete' => 'delete',
    'patch' => 'patch',
    'put' => 'put'
  }

  return map_simple_request[request_type] if map_simple_request.key?(request_type)

  if request_type == 'post'
    return 'search-type' if url.include?('_search')

    return 'create'
  end

  return unless request_type == 'get'

  if url.include?('_history')
    return 'vread' if url.match(%r{/_history/\d+$})

    return 'history-instance'
  end

  return 'search-type' if url.include?('?')

  'read'
end

def extract_resource_type(url)
  FHIR_RESOURCE_TYPE_LIST.each do |resource_type|
    return resource_type if url.include?("/#{resource_type}")
  end
end

def extract_params_with_values(url)
  url.split('?').last.split('&').map { |param| param.split('=') }.filter { |param| ![["_count", "10"], ["_count", "1"]].include?(param) }
end

def compare_arrays(arr1, arr2)
  hash1 = arr1.to_h { |name, value = nil| [name, value] }
  hash2 = arr2.to_h { |name, value = nil| [name, value] }

  hash1.all? do |name, value|
    hash2.key?(name) && (value.nil? || hash2[name] == value)
  end
end

def main
  if ARGV.length != 2
    puts 'Usage: ruby script.rb <file_path_1> <file_path_2>'
    exit 1
  end

  file_path_1, file_path_2 = ARGV

  test_plan = read_json(file_path_1)
  inferno_report = read_json(file_path_2)

  test_cases = JSON.parse(test_plan['testCase'])

  test_cases.each do |test_case|
    puts "Started processing test case: #{test_case.dig('testRun', 0, 'narrative')}"
    test_case_expression = test_case.dig('testRun', 0, 'script', 'sourceString')
    test_case_fhir_action = test_case_expression[1]
    test_case_fhir_resource = test_case_expression[2]
    test_case_params = test_case_expression[3]
    case test_case_fhir_action
    when 'search-type'
      inferno_report.each do |test_run|
        requests = test_run['requests'] || []
        requests.each do |request|
          request_fhir_action = get_fhir_action(request['verb'], request['url'])
          request_fhir_resource = extract_resource_type(request['url'])
          request_params_with_values = extract_params_with_values(request['url'])

          unless test_case_fhir_action == request_fhir_action && test_case_fhir_resource == request_fhir_resource && test_case_params.length == request_params_with_values.length
            next
          end

          compare_result = compare_arrays(test_case_params, request_params_with_values)
          if compare_result == true
            if test_run['result'] == 'pass'
              puts "✅ PASS (#{test_run['test_id']})".colorize(:green)
            end
          end
        end
      end
    end
  end
end

main
