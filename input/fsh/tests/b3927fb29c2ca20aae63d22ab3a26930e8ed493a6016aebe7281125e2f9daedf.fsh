Instance: b3927fb29c2ca20aae63d22ab3a26930e8ed493a6016aebe7281125e2f9daedf
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/b3927fb29c2ca20aae63d22ab3a26930e8ed493a6016aebe7281125e2f9daedf"
* version = "0.0"
* name = "FullIgROROrganizationMustSupportElementOrganizationPartOf"
* title = "IG: full-ig; Profile: ROROrganization; Case: Must Support Element; Element: Organization.partOf"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileROROrganization"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization)
* variable[0].name = "targetResourceIdROROrganization"
* variable[=].defaultValue = "example"
* variable[=].description = "Enter a known instance id on the destination system. Will be checked for conformance against profile ROROrganization."
* variable[=].hint = "[resource.id]"
* variable[+].name = "referencedInstanceRef"
* variable[=].expression = "Organization.partOf.reference"
* variable[=].sourceId = "targetInstance"
* test.name = "Validate the identified resource conforms to the ROROrganization profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #Organization
* test.action[=].operation.label = "Read_Organization_Instance"
* test.action[=].operation.description = "Read Organization Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdROROrganization}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Organization_Returned"
* test.action[=].assert.description = "Assert Organization Returned"
* test.action[=].assert.resource = #Organization
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_ROROrganization_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the ROROrganization Profile"
* test.action[=].assert.validateProfileId = "targetProfileROROrganization"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "resolved_path_contains_reference_element"
* test.action[=].assert.description = "resolved path contains reference element"
* test.action[=].assert.expression = "Organization.partOf.reference.hasValue()"
* test.action[=].assert.warningOnly = false
* test.action[+].operation.type = $testscript-operation-codes#read
* test.action[=].operation.label = "Read_referenced_instance"
* test.action[=].operation.description = "Read referenced instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.responseId = "referencedInstance"
* test.action[=].operation.url = "/${referencedInstanceRef}"
* test.action[+].assert.label = "Assert_Reference_Read_Response_OK"
* test.action[=].assert.description = "Assert Reference Read Response OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false