FROM ruby:3.0

WORKDIR /usr/src/app

COPY . .

RUN bundle install

CMD ["ruby", "code/inferno_report_to_fhir_test_report.rb"]
