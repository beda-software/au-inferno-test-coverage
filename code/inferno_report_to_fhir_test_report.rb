# frozen_string_literal: true

require 'json'
require 'securerandom'

inferno_report = JSON.parse(File.read('./resources/inferno-report-basic-example.json'))

def map_result(result)
  # ["pass", "error", "fail", "cancel", "skip", "omit"] inferno results
  # [ pass | skip | fail | warning | error] fhir test report results
  case result
  when 'pass'
    'pass'
  when 'fail'
    'fail'
  when 'skip', 'omit'
    'skip'
  else
    'error'
  end
end

def map_http_response_codes(response_code)
  case response_code
  when 200..299
    'pass'
  when 400..499
    'fail'
  else
    'error'
  end
end

def map_message_type(message_type)
  case message_type
  when 'warning'
    'warning'
  when 'info'
    'pass'
  else
    'error'
  end
end

def build_assert_actions(entry)
  [{
    'assert' => {
      'detail' => 'run',
      'result' => map_result(entry['result'])
    }
  }]
end

def build_requests_actions(entry)
  entry['requests'].map do |request|
    {
      'operation' => {
        'result' => map_http_response_codes(request['status']),
        'detail' => request['url']
      }
    }
  end
end

def build_messages_actions(entry)
  (entry['messages'] || []).map do |message|
    {
      'operation' => {
        'message' => message['message'],
        'detail' => message['type'],
        'result' => map_message_type(message['type'])
      }
    }
  end
end

def build_test_entry(entry)
  return nil if entry['test_id'].nil?

  {
    'id' => entry['test_id'],
    'action' => build_assert_actions(entry) + build_requests_actions(entry) + build_messages_actions(entry)
  }
end

test_report = {
  'resourceType' => 'TestReport',
  'name' => 'Inferno Test Report',
  'status' => 'completed',
  'testScript' => 'TestScript/au_core_v100_ballot',
  'result' => 'pass',
  'score' => 0,
  'tester' => 'Inferno',
  'test' => inferno_report.map { |entry| build_test_entry(entry) }.compact
}

File.write('test-report.json', JSON.pretty_generate(test_report))
