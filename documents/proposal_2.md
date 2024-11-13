# Coverage
## Problem
Implement a way to get the coverage of the Implementation Guide by Inferno tests. The solution should be easy to maintain: the developer of the IG can add/update/delete test cases using simple tooling whenever something is changed in the IG.

According to the FHIR specification, the `TestPlan` resource can be used to describe the purpose, dependencies, scope, test environment, test framework, test output, etc. It contains test cases that can outline narrative test entry/exit criteria, test data, and more.
([Reference to the specification](http://hl7.org/fhir/testplan.html))

To keep the test reports in FHIR format, we can use the `TestReport` resource. This resource defines how systems should encode the summarized results of executing a `TestScript`.
([Reference to the specification](http://hl7.org/fhir/testreport.html))

The IG test coverage pipeline could work as follows:

1. `TestPlan` resources are created and distributed as part of the AU Core Implementation Guide.
2. The implementer runs the Inferno suite and generates a default Inferno report in JSON format.
3. The implementer runs a specific script that analyzes the Inferno report using `TestPlan` resources to identify coverage.
4. As a result, the implementer receives a `TestReport` resource that includes coverage details about which tests were passed, failed, or skipped. Additionally, the `TestReport` provides supporting information about messages sent to Inferno, requests made, etc.

### Challenges in the Pipeline:

1. **Limited Descriptive Capability of TestPlan**: The `TestPlan` resource provides only high-level narratives, lacking detailed descriptions for individual test cases unless combined with `TestScript` or similar tools. This limitation makes it difficult to align high-level test case descriptions with actual tests in the Inferno report. 

2. **Heavy Dependency on TestScript**: The `TestScript` resource can offer detailed test case information, but its complexity poses a significant barrier for Implementation Guide (IG) developers. Additionally, the primary goal here isn’t to test FHIR server functionality but to validate the contents of the Inferno report.

### Objectives for the Tool:

Our goal is to create a tool that IG developers can `easily understand` and `maintain` while ensuring it is `machine-readable`. Unfortunately, combining `TestPlan` with `TestScript` does not meet this need due to `TestPlan`’s overly high-level narratives and `TestScript`'s complexity.

## Proposal

We think that the IG coverage pipeline can be implemented in a `feedback-driven` manner when developers of the IG have `described` a case through `narrative` and then developers of the Inferno Tests implement a case through code and then `contribute back` a `case ID` to the TestPlan resource.

As a result, the Implementation Guide will have a TestPlan resource that is easy to understand, because it has a clear narrative and it can have or not have reference to the Inferno case ID.

In this case, it will be easy to analyze the TestPlan test cases and compare them to the cases from the Inferno report.

### Feedback-driven TestCase development
1. A TestPlan is initially generated with test cases derived from the CapabilityStatement and StructureDefinition resources using a generator, similar to how all tests are created.
2. If certain cases are missing or modifications are needed, the IG developer adds a new case to the TestPlan, using narrative content only.
3. When a new version of the TestPlan is released with narrative descriptions but without a reference to a case ID, the Inferno developer is responsible for implementing the test. Once the test is implemented and a new version of the Inferno suite is available, the developer updates the TestPlan resource in the IG to include the case ID.
4. The IG developers release a new version of the Implementation Guide that includes the new test case with both the narrative and case ID filled in.

#### Participants
##### TestPlan
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

#### Inferno test report
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

#### TestReport
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
