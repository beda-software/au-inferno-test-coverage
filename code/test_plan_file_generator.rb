require 'erb'
require 'json'

file_content =File.read('cases.json')
cases = JSON.parse(file_content)

template = File.read('test_plan_template.txt.erb')

renderer = ERB.new(template)
output = renderer.result(binding)

File.write('testplan-example.fsh', output)

puts "Text file generated: testplan-example.fsh"