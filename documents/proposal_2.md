# Inferno Test Coverage of an IG
## Problem

We want a mechanism to determine a tool's test coverage of a FHIR Implementation Guide (IG). Specifically, this involves answering the question: "To what extent does the test tool (Inferno Test Kit) test the requirements specified in a FHIR IG?"

According to the FHIR specification, the `TestPlan` resource can be used to describe the purpose, dependencies, scope, test environment, test framework, test output, etc. It contains test cases that can outline narrative test entry/exit criteria, test data, and more.
([Reference to the specification](http://hl7.org/fhir/testplan.html))

As the `TestPlan` resource describes "what to test", we can leverage it to systematically evaluate whether Inferno test(s) can/ will be implemented for each test case to determine the Inferno Test Kit's test coverage of an IG.

While most conformance requirements are encapsulated as machine-readable content in `CapabilityStatement`s, some requirements are expressed in narrative format. Consequently, the testing pipeline must support a flexible and adaptive framework capable of integrating both auto-generated and manually curated test cases.

### Challenges in the Testing Pipeline:

The following highlights key challenges inherent in the current design of FHIR `TestScript` and `TestReport` resources which limit flexibility and usability across diverse testing tools and methodologies.

#### Key Issues:
1. **Rigid and Fully Specified TestScripts**

    - FHIR `TestScript`s are required to be fully specified, meaning they must contain all the details necessary for two independently developed test execution engines to interpret and execute a test in exactly the same way. While this approach ensures consistency, it raises the bar significantly for anyone wanting to write tests for FHIR APIs. Implementers must either:
      - Learn to write `TestScript`s according to the strict requirements, which can be a steep learning curve, or
      - Use their existing tools and workflows for testing RESTful APIs, sacrificing alignment with FHIR standards.
    - This expectation disincentivises adoption of FHIR's testing standards by forcing a difficult choice: abandon familiar testing methodologies or undertake complex integrations to fit the strict framework. 
2. **Limited Scope and Usability of TestReport**
    - The current `TestReport` resource is narrowly defined to summarise results from `TestScript`s. This limited scope makes it ill-suited for representing results from testing frameworks that are dynamic or non-FHIR-standard. Attempts to force such results into FHIR's `TestReport` structure often result in a disorganised mess or require custom extensions that hinder interoperability.


#### Potential future directions for the FHIR community to explore:

Moving forward, reimagining `TestScript` as a more abstract and flexible resource would enable:

  - Lowering the barrier to entry for test authors.
  - Allowing dynamic testing systems like Inferno to represent their tests meaningfully within the FHIR ecosystem.
  - Supporting broader interoperability by focusing on shared APIs for describing, executing, and reporting tests rather than enforcing a rigid workflow.

This approach could strike a balance between the benefits of standardisation and the practical realities of diverse testing methodologies.

### Objectives for the Tool:

Our goal is to develop a solution, supported by tooling, to identify and define test cases for an IG. Each major release of an Inferno Test Kit aims to deliver maximum feasible test coverage of the IG. A systematic approach to test planning, leveraging the structure of FHIR's `TestPlan`, will help ensure that the iterative development of the Inferno Test Kit and the IG are aligned, while tracking the Inferno Test Kit's test coverage of the IG.
The solution should be easy to maintain: the developer of the IG can add/update/delete test cases using simple tooling whenever something is changed in the IG.


## Proposal

We think that the IG coverage pipeline can be implemented in a `feedback-driven` manner when developers of the IG have `described` a case through `narrative` and then developers of the Inferno Tests implement a case through code and then `contribute back` a `case ID` to the TestPlan resource.

As a result, the Implementation Guide will have a TestPlan resource that is easy to understand, because it has a clear narrative and it can have or not have reference to the Inferno case ID.

In this case, it will be easy to analyze the TestPlan test cases and compare them to the cases from the Inferno test report.

Based on the challenges described above, we have chosen not to implement FHIR `TestScript` at this time, and instead referenced Inferno tests in an abstracted interpretation of `test script`.

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

##### Inferno test report
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

##### TestReport
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

## Conclusion
As a result, we can get a simple workflow to calculate the coverage of the IG which is easy to read, understand and maintain. 
