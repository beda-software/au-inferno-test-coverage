run:
	docker build -t inferno-report-transformer .
	docker run --rm -v `pwd`:/usr/src/app inferno-report-transformer
