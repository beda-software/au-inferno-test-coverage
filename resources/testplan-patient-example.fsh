RuleSet: AddCase(narrative, id)
* testCase.testRun[+]
  * narrative = {narrative}
  * script.sourceReference.identifier.system = "https://github.com/hl7au/au-fhir-core-inferno"
  * script.sourceReference.identifier.value = {id}

Instance: testplan-example-patients
InstanceOf: TestPlan
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fhir
* status = #draft
* publisher = "HL7 International / FHIR Infrastructure"
* insert AddCase("SHALL Server returns valid results for Patient search by _id", "au_core_v100_ballot_patient__id_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by family", "au_core_v100_ballot_patient_family_search_test")
* insert AddCase("SHALL Server returns valid results for Patient search by identifier", "au_core_v100_ballot_patient_identifier_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by name", "au_core_v100_ballot_patient_name_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by birthdate + family", "au_core_v100_ballot_patient_birthdate_family_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by birthdate + name", "au_core_v100_ballot_patient_birthdate_name_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by family + gender", "au_core_v100_ballot_patient_family_gender_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by gender + name", "au_core_v100_ballot_patient_gender_name_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by identifier IHI", "au_core_v100_ballot_patient_identifier_ihi_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by identifier Medicare", "au_core_v100_ballot_patient_identifier_medicare_search_test")
* insert AddCase("SHOULD Server returns valid results for Patient search by identifier DVA", "au_core_v100_ballot_patient_identifier_dva_search_test")
* insert AddCase("SHALL Server returns correct Patient resource from Patient read interaction", "au_core_v100_ballot_patient_read_test")
* insert AddCase("Patient resources returned during previous tests conform to the AU Core Patient", "au_core_v100_ballot_patient_validation_test")
* insert AddCase("All must support elements are provided in the Patient resources returned", "au_core_v100_ballot_patient_must_support_test")
