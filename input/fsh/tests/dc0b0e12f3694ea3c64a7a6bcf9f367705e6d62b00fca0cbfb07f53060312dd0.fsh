Instance: dc0b0e12f3694ea3c64a7a6bcf9f367705e6d62b00fca0cbfb07f53060312dd0
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/dc0b0e12f3694ea3c64a7a6bcf9f367705e6d62b00fca0cbfb07f53060312dd0"
* version = "0.0"
* name = "FullIgRORPractitionerRoleMustSupportElementPractitionerRoleExtensionRorPractitionerroleUnitExerciseMode"
* title = "IG: full-ig; Profile: RORPractitionerRole; Case: Must Support Element; Element: PractitionerRole.extension:ror-practitionerrole-unit-exercise-mode"
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