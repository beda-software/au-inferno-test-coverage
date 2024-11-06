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
  url.split('?').last.split('&').map do |param|
    param.split('=')
  end.filter { |param| ![%w[_count 10], %w[_count 1]].include?(param) }
end

def compare_arrays(arr1, arr2)
  hash1 = arr1.to_h { |name, value = nil| [name, value] }
  hash2 = arr2.to_h { |name, value = nil| [name, value] }

  hash1.all? do |name, value|
    hash2.key?(name) && (value.nil? || hash2[name] == value)
  end
end

def puts_status(status_string)
  result_string = "--> Result is: #{status_string}"
  case status_string
  when 'not_implemented'
    result_string.colorize(:gray)
  when 'pass'
    result_string.colorize(:green)
  end
end

def extract_request_details(request)
  {
    :action => request_fhir_action = get_fhir_action(request['verb'], request['url']),
    :resource => request_fhir_resource = extract_resource_type(request['url']),
    :params => request_params_with_values = extract_params_with_values(request['url'])
  }
end

def main
  if ARGV.length != 2
    puts 'Usage: ruby script.rb <file_path_1> <file_path_2>'
    exit 1
  end

  file_path_1, file_path_2 = ARGV

  test_plan = read_json(file_path_1)
  inferno_report = read_json(file_path_2)

  test_cases = test_plan['testCase']
  test_cases_count = test_cases.length
  passed_cases = 0

  puts "#{test_cases_count} were found in the TestPlan resource. Starting execution..."

  test_cases.each_with_index do |test_case, index|
    status = 'not_implemented'

    puts "-> #{index+1}/#{test_cases_count} #{test_case.dig('testRun', 0, 'narrative')}"
    test_case_expression = JSON.parse(test_case.dig('testRun', 0, 'script', 'sourceString'))
    tc_action, tc_resource, tc_params = test_case_expression[1..-1]

    case tc_action
    when 'read'

    when 'search-type'
      inferno_report.each do |test_run|
        requests = test_run['requests'] || []
        requests.each do |request|
          r_action, r_resource, r_params = extract_request_details(request).values_at(:action, :resource, :params)

          unless tc_action == r_action && tc_resource == r_resource && tc_params.length == r_params.length
            next
          end

          compare_result = compare_arrays(tc_params, r_params)
          next unless compare_result == true

          puts "--> INFO: Case was found in #{test_run['test_id']}".colorize(:blue)

          status = test_run['result']
        end
      end
    end

    if status == 'pass'
      passed_cases += 1
    end

    puts puts_status(status)
  end

  puts "\nCoverage is: #{passed_cases}/#{test_cases_count}"

end

main
