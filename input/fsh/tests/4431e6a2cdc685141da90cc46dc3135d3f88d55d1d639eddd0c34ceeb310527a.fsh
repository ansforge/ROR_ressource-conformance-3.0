Instance: 4431e6a2cdc685141da90cc46dc3135d3f88d55d1d639eddd0c34ceeb310527a
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/4431e6a2cdc685141da90cc46dc3135d3f88d55d1d639eddd0c34ceeb310527a"
* version = "0.0"
* name = "FullIgRORLocationMustSupportElementLocationName"
* title = "IG: full-ig; Profile: RORLocation; Case: Must Support Element; Element: Location.name"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORLocation"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location)
* variable.name = "targetResourceIdRORLocation"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORLocation."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORLocation profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #Location
* test.action[=].operation.label = "Read_Location_Instance"
* test.action[=].operation.description = "Read Location Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORLocation}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Location_Returned"
* test.action[=].assert.description = "Assert Location Returned"
* test.action[=].assert.resource = #Location
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORLocation_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORLocation Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORLocation"
* test.action[=].assert.warningOnly = false