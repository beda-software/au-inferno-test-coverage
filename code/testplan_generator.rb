# frozen_string_literal: true

require 'erb'
require 'json'

def find_value_in_file(file_path, search_str)
  value = nil
  File.foreach(file_path) do |test_line|
    if test_line.include?(search_str)
      value = test_line.split(search_str)[1].strip.gsub("'", '')
      break
    end
  end
  value
end

directory_path = 'lib/au_core_test_kit/generated'
folder_hashes = []

if Dir.exist?(directory_path)
  folder_names = Dir.entries(directory_path).select do |entry|
    File.directory?(File.join(directory_path, entry)) && entry != '.' && entry != '..'
  end

  folder_names.each_with_index do |folder_name, index|
    folder_path = File.join(directory_path, folder_name)
    file_path = File.join(folder_path, 'au_core_test_suite.rb')
    test_cases = []
    ig_index = index + 1

    next unless File.exist?(file_path)

    File.foreach(file_path) do |line|
      if line.include?('group from: :')
        value = line[/:\s*([^\s]+)/, 1]
        id = value if value
        file_path_with_id = Dir.glob("#{folder_path}/*").find { |f| File.file?(f) && File.read(f).include?("id #{id}") }
        local_test_cases = []
        next unless id && file_path_with_id

        File.foreach(file_path_with_id) do |test_line|
          if test_line.include?('test from: :')
            test_value = test_line[/:\s*([^\s]+)/, 1]
            test_id = test_value if test_value
            Dir.glob("#{folder_path}/**/*").select { |f| File.file?(f) }.each do |test_file_path_with_id|
              next unless File.read(test_file_path_with_id).include?("id #{test_id}")
              local_test_cases << {
                "testRun": [
                  {
                    "narrative": find_value_in_file(test_file_path_with_id, 'title'),
                    "script": {
                      "sourceReference": {
                        "identifier": {
                          "system": 'https://github.com/hl7au/au-fhir-core-inferno',
                          "value": find_value_in_file(test_file_path_with_id, 'id :')
                        }
                      }
                    }
                  }
                ]
              }
              break
            end
          end
        end
        test_cases += local_test_cases
      end
    end
    test_plan = {
      "resourceType": "TestPlan",
      "id": "example",
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
          "valueCode": "fhir"
        }
      ],
      "status": "draft",
      "publisher": "HL7 International / FHIR Infrastructure",
      "testCase": test_cases
    }

    File.open("data.json", "w") do |file|
      file.write(JSON.pretty_generate(test_plan))
    end
  end
else
  puts "Directory not found: #{directory_path}"
end
