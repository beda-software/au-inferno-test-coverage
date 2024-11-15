Instance: example
InstanceOf: TestPlan
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #fhir
* status = #draft
* publisher = "HL7 International / FHIR Infrastructure"
* testCase[0].testRun.narrative = "(SHALL) Server returns valid results for Patient search by _id"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient__id_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by family"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_family_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Patient search by identifier"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_identifier_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by birthdate + family"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_birthdate_family_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by birthdate + name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_birthdate_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by family + gender"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_family_gender_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by gender + name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_gender_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by identifier (IHI)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_identifier_ihi_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by identifier (Medicare)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_identifier_medicare_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Patient search by identifier (DVA)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_identifier_dva_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Patient resource from Patient read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_read_test)
* testCase[+].testRun.narrative = "Patient resources returned during previous tests conform to the AU Core Patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Patient resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_patient_must_support_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Body Weight"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyweight_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Blood Pressure"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bloodpressure_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Body Height"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodyheight_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Pathology Result Observation"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_path_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Body Temperature"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_bodytemp_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Heart Rate"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_heartrate_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Waist Circumference"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_waistcircum_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Respiration Rate"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_resprate_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Diagnostic Result Observation"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_diagnosticresult_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Observation search by patient + category + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_category_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + category + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_category_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Observation search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Observation resource from Observation read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_read_test)
* testCase[+].testRun.narrative = "Observation resources returned during previous tests conform to the AU Core Smoking Status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Observation resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Observation resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_smokingstatus_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for AllergyIntolerance search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for AllergyIntolerance search by patient + clinical-status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_clinical_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for AllergyIntolerance search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for AllergyIntolerance search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for AllergyIntolerance search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for AllergyIntolerance search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct AllergyIntolerance resource from AllergyIntolerance read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_read_test)
* testCase[+].testRun.narrative = "AllergyIntolerance resources returned during previous tests conform to the AU Core AllergyIntolerance"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the AllergyIntolerance resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within AllergyIntolerance resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_allergy_intolerance_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Condition search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Condition search by patient + category"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_category_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Condition search by patient + clinical-status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_clinical_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient + category + clinical-status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_category_clinical_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient + code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_code_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient + onset-date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_onset_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition multipleAnd search by onset-date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_onset_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Condition search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Condition resource from Condition read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_read_test)
* testCase[+].testRun.narrative = "Condition resources returned during previous tests conform to the AU Core Condition"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Condition resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Condition resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_condition_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Encounter search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Encounter search by date + patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_date_patient_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by class + patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_class_patient_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient + location"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_location_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Encounter search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Encounter resource from Encounter read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_read_test)
* testCase[+].testRun.narrative = "Encounter resources returned during previous tests conform to the AU Core Encounter"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Encounter resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Encounter resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_encounter_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Immunization search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Immunization search by patient + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization search by patient + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization multipleAnd search by date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_date_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Immunization search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Immunization resource from Immunization read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_read_test)
* testCase[+].testRun.narrative = "Immunization resources returned during previous tests conform to the AU Core Immunization"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Immunization resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Immunization resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_immunization_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for MedicationRequest search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for MedicationRequest search by _id"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request__id_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for MedicationRequest search by patient + intent"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for MedicationRequest search by patient + intent + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest search by patient + intent + authoredon"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_authoredon_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest multipleOr search by intent"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_intent_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for MedicationRequest multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest multipleAnd search by authoredon"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_authoredon_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for MedicationRequest search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct MedicationRequest resource from MedicationRequest read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_read_test)
* testCase[+].testRun.narrative = "Server returns Medication resources from MedicationRequest search by patient and MedicationRequest:medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_include_patient_search_test)
* testCase[+].testRun.narrative = "Server returns Medication resources from MedicationRequest search by _id and MedicationRequest:medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request__id_include__id_search_test)
* testCase[+].testRun.narrative = "Server returns Medication resources from MedicationRequest search by patient, intent and MedicationRequest:medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_include_patient_intent_search_test)
* testCase[+].testRun.narrative = "Server returns Medication resources from MedicationRequest search by patient, intent, status and MedicationRequest:medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_status_include_patient_intent_status_search_test)
* testCase[+].testRun.narrative = "Server returns Medication resources from MedicationRequest search by patient, intent, authoredon and MedicationRequest:medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_patient_intent_authoredon_include_patient_intent_authoredon_search_test)
* testCase[+].testRun.narrative = "MedicationRequest resources returned during previous tests conform to the AU Core MedicationRequest"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_validation_test)
* testCase[+].testRun.narrative = "Medication resources returned during previous tests conform to the AU Core Medication"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the MedicationRequest resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within MedicationRequest resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_medication_request_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Procedure search by patient"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Procedure search by patient + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient + code + date"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_code_date_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient + status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_status_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure multipleOr search by code"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_code_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure multipleOr search by status"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_status_multiple_or_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient (IHI) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_ihi_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient (Medicare) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_medicare_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Procedure search by patient (DVA) (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_patient_dva_chain_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Procedure resource from Procedure read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_read_test)
* testCase[+].testRun.narrative = "Procedure resources returned during previous tests conform to the AU Core Procedure"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Procedure resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Procedure resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_procedure_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Location resource from Location read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_read_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Location search by address"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_address_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Location search by name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Location search by address-city"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_address_city_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Location search by address-state"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_address_state_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Location search by address-postalcode"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_address_postalcode_search_test)
* testCase[+].testRun.narrative = "Location resources returned during previous tests conform to the AU Core Location"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Location resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within Location resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_location_reference_resolution_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Organization resource from Organization read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_read_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Organization search by _id"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization__id_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Organization search by address"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_address_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Organization search by identifier"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_identifier_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Organization search by name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Organization search by identifier (HPI-O)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_identifier_hpio_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Organization search by identifier (ABN)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_identifier_abn_search_test)
* testCase[+].testRun.narrative = "Organization resources returned during previous tests conform to the AU Core Organization"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Organization resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_organization_must_support_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct Practitioner resource from Practitioner read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_read_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Practitioner search by _id"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner__id_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for Practitioner search by identifier"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_identifier_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Practitioner search by name"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_name_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for Practitioner search by identifier (HPI-I)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_identifier_hpii_search_test)
* testCase[+].testRun.narrative = "Practitioner resources returned during previous tests conform to the AU Core Practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the Practitioner resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_must_support_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns correct PractitionerRole resource from PractitionerRole read interaction"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_read_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for PractitionerRole search by _id"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role__id_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for PractitionerRole search by identifier"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_identifier_search_test)
* testCase[+].testRun.narrative = "(SHALL) Server returns valid results for PractitionerRole search by practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_practitioner_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for PractitionerRole search by specialty"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_specialty_search_test)
* testCase[+].testRun.narrative = "(MAY) Server returns valid results for PractitionerRole multipleOr search by practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_practitioner_multiple_or_search_test)
* testCase[+].testRun.narrative = "(MAY) Server returns valid results for PractitionerRole multipleAnd search by practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_practitioner_multiple_and_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for PractitionerRole search by practitioner (chained parameters)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_practitioner_chain_search_test)
* testCase[+].testRun.narrative = "(SHOULD) Server returns valid results for PractitionerRole search by identifier (Medicare)"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_identifier_medicare_search_test)
* testCase[+].testRun.narrative = "Server returns Practitioner resources from PractitionerRole search by _id and PractitionerRole:practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role__id_include__id_search_test)
* testCase[+].testRun.narrative = "Server returns Practitioner resources from PractitionerRole search by identifier and PractitionerRole:practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_identifier_include_identifier_search_test)
* testCase[+].testRun.narrative = "Server returns Practitioner resources from PractitionerRole search by practitioner and PractitionerRole:practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_practitioner_include_practitioner_search_test)
* testCase[+].testRun.narrative = "Server returns Practitioner resources from PractitionerRole search by specialty and PractitionerRole:practitioner"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_specialty_include_specialty_search_test)
* testCase[+].testRun.narrative = "PractitionerRole resources returned during previous tests conform to the AU Core PractitionerRole"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_validation_test)
* testCase[+].testRun.narrative = "All must support elements are provided in the PractitionerRole resources returned"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_must_support_test)
* testCase[+].testRun.narrative = "MustSupport references within PractitionerRole resources are valid"
* testCase[=].testRun.script.sourceReference = Reference(TestScript/au_core_v100_ballot_practitioner_role_reference_resolution_test)