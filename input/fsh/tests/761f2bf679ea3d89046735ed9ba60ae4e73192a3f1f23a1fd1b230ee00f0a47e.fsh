Instance: 761f2bf679ea3d89046735ed9ba60ae4e73192a3f1f23a1fd1b230ee00f0a47e
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/761f2bf679ea3d89046735ed9ba60ae4e73192a3f1f23a1fd1b230ee00f0a47e"
* version = "0.0"
* name = "FullIgRORPractitionerRoleMustSupportElementPractitionerRoleAvailableTime"
* title = "IG: full-ig; Profile: RORPractitionerRole; Case: Must Support Element; Element: PractitionerRole.availableTime"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORPractitionerRole"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole)
* variable.name = "targetResourceIdRORPractitionerRole"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORPractitionerRole."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORPractitionerRole profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #PractitionerRole
* test.action[=].operation.label = "Read_PractitionerRole_Instance"
* test.action[=].operation.description = "Read PractitionerRole Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORPractitionerRole}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_PractitionerRole_Returned"
* test.action[=].assert.description = "Assert PractitionerRole Returned"
* test.action[=].assert.resource = #PractitionerRole
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORPractitionerRole_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORPractitionerRole Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORPractitionerRole"
* test.action[=].assert.warningOnly = false