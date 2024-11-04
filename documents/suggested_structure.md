# Coverage
## Participants
### TestPlan
Can be generated on the suite generation step. This resource needs to keep an ID list of each test in the suite. Also, it can keep the required narrative of the test, for example: the title, and description.

<details>
<summary>
Example of the TestPlan resource with a single test ID
</summary>

```json
{
    "resourceType": "TestPlan",
    "id": "example",
    "extension": [
        {
            "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
            "valueCode": "fhir"
        }
    ],
    "status": "draft",
    "publisher": "HL7 International / FHIR Infrastructure",
    "testCase": [
        {
            "testRun": [
                {
                    "narrative": "(SHALL) Server returns valid results for Patient search by _id",
                    "script": {
                        "sourceReference": {
                            "reference": "TestScript/au_core_v100_ballot_patient__id_search_test"
                        }
                    }
                }
            ]
        }
    ]
}
```
</details>

### Inferno test report
This JSON file generates as default report of the Inferno framework. Users can get the file through the URL: https://inferno.hl7.org.au/api/test_sessions/your-session-id/results

<details>
<summary>
Example of the Inferno report with a single test
</summary>

```json
[
    {
        "id": "53e860fe-2692-4c7c-bf7b-d23632818c56",
        "created_at": "2024-11-04T10:20:19.982+00:00",
        "inputs": [
            {
                "name": "url",
                "value": "https://au-core.beda.software/fhir",
                "type": "text"
            },
            {
                "name": "smart_credentials",
                "value": "{}",
                "type": "oauth_credentials"
            },
            {
                "name": "header_name",
                "value": null,
                "type": "text"
            },
            {
                "name": "header_value",
                "value": null,
                "type": "text"
            }
        ],
        "optional": false,
        "outputs": [],
        "requests": [
            {
                "id": "6bd5c0a3-335f-4ea3-bd28-b871398631c7",
                "direction": "outgoing",
                "index": 314680,
                "result_id": "53e860fe-2692-4c7c-bf7b-d23632818c56",
                "status": 200,
                "timestamp": "2024-11-04T10:20:19.988+00:00",
                "url": "https://au-core.beda.software/fhir/Practitioner/practitioner-tc",
                "verb": "get"
            }
        ],
        "result": "pass",
        "test_id": "au_core_v100_ballot-au_core_v100_ballot_fhir_api-au_core_v100_ballot_practitioner_role-au_core_v100_ballot_practitioner_role_reference_resolution_test",
        "test_run_id": "bfb1bd25-a274-42a1-a5f4-eaf179603ee7",
        "test_session_id": "fT4xd0lfJWC",
        "updated_at": "2024-11-04T10:20:19.982+00:00"
    }
]
```
</details>

### TestReport
Can be generated on the combination of the TestPlan and Inferno report. It should have a list of each test ID with assert results and other required test run details.

<details>
<summary>
Example of the TestReport with assert, message, and request
</summary>

```json
{
  "resourceType": "TestReport",
  "name": "Inferno Test Report",
  "status": "completed",
  "testScript": "TestScript/au_core_v100_ballot",
  "result": "pass",
  "score": 0,
  "tester": "Inferno",
  "test": [
    {
      "id": "au_core_v100_ballot-au_core_v100_ballot_fhir_api-au_core_v100_ballot_practitioner_role-au_core_v100_ballot_practitioner_role_specialty_include_specialty_search_test",
      "action": [
        {
          "assert": {
            "detail": "run",
            "result": "pass"
          }
        },
        {
          "operation": {
            "result": "pass",
            "detail": "https://au-core.beda.software/fhir/PractitionerRole?_include=PractitionerRole:practitioner&specialty=394814009"
          }
        },
        {
          "operation": {
            "message": "Received resource type(s) Practitioner in search bundle, but only expected resource types PractitionerRole, OperationOutcome. This is unusual but allowed if the server believes additional resource types are relevant.",
            "detail": "info",
            "result": "pass"
          }
        }
      ]
    }
  ]
}
```
</details>
