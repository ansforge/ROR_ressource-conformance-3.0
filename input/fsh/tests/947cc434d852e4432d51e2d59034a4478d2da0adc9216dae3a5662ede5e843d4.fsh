Instance: 947cc434d852e4432d51e2d59034a4478d2da0adc9216dae3a5662ede5e843d4
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/947cc434d852e4432d51e2d59034a4478d2da0adc9216dae3a5662ede5e843d4"
* version = "0.0"
* name = "FullIgRORPractitionerRoleMustSupportElementPractitionerRoleHealthcareService"
* title = "IG: full-ig; Profile: RORPractitionerRole; Case: Must Support Element; Element: PractitionerRole.healthcareService"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORPractitionerRole"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole)
* variable[0].name = "targetResourceIdRORPractitionerRole"
* variable[=].defaultValue = "example"
* variable[=].description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORPractitionerRole."
* variable[=].hint = "[resource.id]"
* variable[+].name = "referencedInstanceRef"
* variable[=].expression = "PractitionerRole.healthcareService.reference"
* variable[=].sourceId = "targetInstance"
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
* test.action[+].assert.label = "resolved_path_contains_reference_element"
* test.action[=].assert.description = "resolved path contains reference element"
* test.action[=].assert.expression = "PractitionerRole.healthcareService.reference.hasValue()"
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