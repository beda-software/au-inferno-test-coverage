run:
	docker build -t inferno-report-transformer .
	docker run --rm -v `pwd`:/usr/src/app inferno-report-transformer

prompt:
	ruby code/prompt_conformance_cases.rb

coverage:
	ruby code/inferno_get_coverage.rb resources/test-plan-dsl-example.json resources/inferno-report-basic-example.json

