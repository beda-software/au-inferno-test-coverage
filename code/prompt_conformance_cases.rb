# frozen_string_literal: true

require 'json'
require 'highline'

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
  action_type_options = [
    'read (Read the current state of the resource.)',
    'vread (Read the state of a specific version of the resource.)',
    'update (Update an existing resource by its id (or create it if it is new).)',
    'update-conditional (Update an existing resource based on some identification criteria (or create it if it is new).',
    'patch	(Update an existing resource by posting a set of changes to it.)',
    'patch-conditional	(Update an existing resource, based on some identification criteria, by posting a set of changes to it.)',
    'delete	(Delete a resource)',
    'delete-conditional-single	(Delete a single resource based on some identification criteria.)',
    'delete-conditional-multiple	(Delete one or more resources based on some identification criteria.)',
    'delete-history	(Delete all historical versions of a resource.)',
    'delete-history-version	(Delete a specific version of a resource.)',
    'history-instance	(Retrieve the change history for a particular resource.)',
    'history-type	(Retrieve the change history for all resources of a particular type.)',
    'create	(Create a new resource with a server assigned id.)',
    'create-conditional	(Create a new resource with a server assigned id if an equivalent resource does not already exist.)',
    'search-type	(Search all resources of the specified type based on some filter criteria.)',
    'conforms (Resource is conform to the Implementation guide.)',
    'validate-references (All Must Support references are valid.)',
    'check-must-support (All Must Support elements are provided in the resource.)'
  ].freeze
  obligation_options = %w[SHALL SHOULD MAY]
  resource_type_options = %w[
    AllergyIntolerance
    Appointment
    Encounter
    Medication
    MedicationRequest
    MedicationStatement
    Observation
    Organization
    Patient
    Practitioner
    PractitionerRole
    Procedure
    Provenance
    Specimen
    Substance
  ].freeze

  action_type_options_hash = list_to_numeral_hash(action_type_options)
  obligation_options_hash = list_to_numeral_hash(obligation_options)
  resource_type_options_hash = list_to_numeral_hash(resource_type_options)
  puts "res: #{resource_type_options_hash}"

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
  [description, [obligation, action_type, resource_type, parameters]]
end

def main
  file_path = prompt('Enter the file path to save the JSON file')
  data = []

  loop do
    add_more = prompt('Do you want to add a new item? (yes/no)').downcase
    break if add_more != 'yes'

    data << add_item
  end

  test_cases = data.map do |item|
    { testRun: [{
      narrative: item[0],
      script: {
        sourceString: item[1]
      }
    }] }
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
    'testCase' => JSON.generate(test_cases),
    'contact' => [{
      'telecom' => [{
        'system' => 'url',
        'value' => 'http://www.hl7.org/Special/committees/fiwg'
      }]
    }]
  }

  File.write(file_path, JSON.pretty_generate(test_plan))
  puts "Data saved to #{file_path}"
end

main
