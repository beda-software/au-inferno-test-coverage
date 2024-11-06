# frozen_string_literal: true

require 'json'
require 'highline'

require_relative 'constants'

def prompt(message)
  print "#{message}: "
  gets.chomp
end

def list_to_numeral_hash(list)
  list.map.with_index(1) do |item, index|
    [index.to_s, { 'display' => "#{index}. #{item}", 'code' => item.split(' ').first }]
  end.to_h
end

def prompt_options(title, options)
  "#{title}\n\n#{options.values.map { |value| value['display'] }.join("\n")}"
end

def get_data_from_prompt(hash_data, prompt_data)
  hash_data[prompt_data]['code'] || prompt_data
end

def add_item
  cli = HighLine.new

  action_type_options_hash = list_to_numeral_hash(FHIR_ACTION_TYPE_LIST)
  obligation_options_hash = list_to_numeral_hash(FHIR_OBLIGATION_TYPE_LIST)
  resource_type_options_hash = list_to_numeral_hash(FHIR_RESOURCE_TYPE_LIST)

  obligation = cli.ask prompt_options('Enter obligation', obligation_options_hash)
  obligation = get_data_from_prompt(obligation_options_hash, obligation)

  action_type = cli.ask prompt_options('Enter action type', action_type_options_hash)
  action_type = get_data_from_prompt(action_type_options_hash, action_type)

  resource_type = cli.ask prompt_options('Enter resource type', resource_type_options_hash)
  resource_type = get_data_from_prompt(resource_type_options_hash, resource_type)

  parameters = []
  loop do
    param = prompt('Enter parameter (or press enter to finish)')
    break if param.empty?

    value = prompt('Enter value (or press enter if not needed)')
    parameters << (value.empty? ? [param] : [param, value])
  end

  description = "(#{obligation}) Server returns valid results for #{resource_type} #{action_type.downcase}"
  description += " with parameters #{parameters.map { |param| param.join(': ') }.join(', ')}" unless parameters.empty?
  [description, [obligation, action_type, resource_type, parameters]]
end

def prepare_test_case(test_case_data)
  { testRun: [{
                narrative: test_case_data[0],
                script: {
                  sourceString: JSON.generate(test_case_data[1])
                }
              }] }
end

def prepare_test_cases(data)
  data.map { |item| prepare_test_case(item) }
end

def main
  file_path = prompt('Enter the file path to save the JSON file')
  data = []

  loop do
    add_more = prompt('Do you want to add a new item? (yes/no)').downcase
    break if add_more != 'yes'

    data << add_item
  end

  test_plan = {
    'resourceType' => 'TestPlan',
    'id' => 'example',
    'extension' => [{
      'url' => 'http://hl7.org/fhir/StructureDefinition/structuredefinition-wg',
      'valueCode' => 'fhir'
    }],
    'status' => 'draft',
    'publisher' => 'HL7 International / FHIR Infrastructure',
    'testCase' => prepare_test_cases(data),
    'contact' => [{
      'telecom' => [{
        'system' => 'url',
        'value' => 'http://www.hl7.org/Special/committees/fiwg'
      }]
    }]
  }

  File.write(file_path, JSON.pretty_generate(test_plan))
end

main
