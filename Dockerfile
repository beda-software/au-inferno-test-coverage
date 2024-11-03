FROM ruby:3.0

WORKDIR /usr/src/app

COPY . .

RUN bundle install

CMD ["ruby", "code/inferno-report-to-fhir-test-report.rb"]
