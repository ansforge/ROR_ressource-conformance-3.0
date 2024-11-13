Instance: 4294fa8a7f69342146f9367f721ef02fa6987a09325ca1c26207c6fc77e6995d
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/4294fa8a7f69342146f9367f721ef02fa6987a09325ca1c26207c6fc77e6995d"
* version = "0.0"
* name = "FullIgROROrganizationMustSupportElementOrganizationAlias"
* title = "IG: full-ig; Profile: ROROrganization; Case: Must Support Element; Element: Organization.alias"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileROROrganization"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization)
* variable.name = "targetResourceIdROROrganization"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile ROROrganization."
* variable.hint = "[resource.id]"
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