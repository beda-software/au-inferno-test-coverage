require 'json'
require 'securerandom'

inferno_report = JSON.parse(File.read('./resources/inferno-report-basic-example.json'))

test_report = {
  "resourceType" => "TestReport",
  "id" => SecureRandom.uuid,
  "name" => "Inferno Test Report",
  "status" => "completed",
  # "testScript" => {
  #   "reference" => "TestScript/au_core_v100_ballot"
  # },
  "result" => "pass",
  "score" => 0,
  "tester" => "Inferno",
  # "issued" => inferno_entry["created_at"],
  "test" => inferno_report.map do |entry|
    {
      "name" => entry['test_id'],
      "action" => entry['requests'].map do |request|
        {
          "operation" => {
            "result" => request["status"],
            "detail" => {
              "method" => request["verb"],
              "url" => request["url"]
            }
          }
        }
      end
    }
  end
}

File.write('test-report.json', JSON.pretty_generate(test_report))
