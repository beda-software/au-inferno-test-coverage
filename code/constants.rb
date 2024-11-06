# frozen_string_literal: true

FHIR_OBLIGATION_TYPE_LIST = %w[SHALL SHOULD MAY]

FHIR_RESOURCE_TYPE_LIST = %w[
  AllergyIntolerance
  Appointment
  Encounter
  Medication
  MedicationRequest
  MedicationStatement
  Observation
  Organization
  Patient
  Practitioner
  PractitionerRole
  Procedure
  Provenance
  Specimen
  Substance
].freeze

FHIR_ACTION_TYPE_LIST = [
    'read (Read the current state of the resource.)',
    'vread (Read the state of a specific version of the resource.)',
    'update (Update an existing resource by its id (or create it if it is new).)',
    'update-conditional (Update an existing resource based on some identification criteria (or create it if it is new).',
    'patch	(Update an existing resource by posting a set of changes to it.)',
    'patch-conditional	(Update an existing resource, based on some identification criteria, by posting a set of changes to it.)',
    'delete	(Delete a resource)',
    'delete-conditional-single	(Delete a single resource based on some identification criteria.)',
    'delete-conditional-multiple	(Delete one or more resources based on some identification criteria.)',
    'delete-history	(Delete all historical versions of a resource.)',
    'delete-history-version	(Delete a specific version of a resource.)',
    'history-instance	(Retrieve the change history for a particular resource.)',
    'history-type	(Retrieve the change history for all resources of a particular type.)',
    'create	(Create a new resource with a server assigned id.)',
    'create-conditional	(Create a new resource with a server assigned id if an equivalent resource does not already exist.)',
    'search-type	(Search all resources of the specified type based on some filter criteria.)',
    'conforms (Resource is conform to the Implementation guide.)',
    'validate-references (All Must Support references are valid.)',
    'check-must-support (All Must Support elements are provided in the resource.)'
].freeze
