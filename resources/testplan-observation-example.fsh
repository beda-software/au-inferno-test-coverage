RuleSet: AddCase(narrative, id)
* testCase.testRun[+]
  * narrative = {narrative}
  * script.sourceReference.identifier.system = "https://github.com/hl7au/au-fhir-core-inferno"
  * script.sourceReference.identifier.value = {id}

Instance: testplan-example-observations
InstanceOf: TestPlan
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fhir
* status = #draft
* publisher = "HL7 International / FHIR Infrastructure"
* dependency[+]
  * predecessor.reference = "testplan-example-patients"
  * predecessor.type = "TetsPlan"
* insert AddCase("SHALL Server returns valid results for Observation search by patient + code", "au_core_v100_ballot_bodyweight_patient_code_search_test")
* insert AddCase("SHALL Server returns valid results for Observation search by patient", "au_core_v100_ballot_bodyweight_patient_search_test")
* insert AddCase("SHALL Server returns valid results for Observation search by patient + category", "au_core_v100_ballot_bodyweight_patient_category_search_test")
* insert AddCase("SHALL Server returns valid results for Observation search by patient + category + date", "au_core_v100_ballot_bodyweight_patient_category_date_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient + category + status", "au_core_v100_ballot_bodyweight_patient_category_status_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient + code + date", "au_core_v100_ballot_bodyweight_patient_code_date_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation multipleOr search by code", "au_core_v100_ballot_bodyweight_code_multiple_or_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation multipleOr search by status", "au_core_v100_ballot_bodyweight_status_multiple_or_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation multipleAnd search by date", "au_core_v100_ballot_bodyweight_date_multiple_and_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient chained parameters", "au_core_v100_ballot_bodyweight_patient_chain_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient IHI chained parameters", "au_core_v100_ballot_bodyweight_patient_ihi_chain_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient Medicare chained parameters", "au_core_v100_ballot_bodyweight_patient_medicare_chain_search_test")
* insert AddCase("SHOULD Server returns valid results for Observation search by patient DVA chained parameters", "au_core_v100_ballot_bodyweight_patient_dva_chain_search_test")
* insert AddCase("SHALL Server returns correct Observation resource from Observation read interaction", "au_core_v100_ballot_bodyweight_read_test")
* insert AddCase("Observation resources returned during previous tests conform to the AU Core Body Weight", "au_core_v100_ballot_bodyweight_validation_test")
* insert AddCase("All must support elements are provided in the Observation resources returned", "au_core_v100_ballot_bodyweight_must_support_test")
* insert AddCase("MustSupport references within Observation resources are valid", "au_core_v100_ballot_bodyweight_reference_resolution_test")
