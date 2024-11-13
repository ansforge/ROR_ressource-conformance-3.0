Instance: d83adef05ff111abb1c4382322026930ec1ccf145ca6d7ed5f8f63c658be4986
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/d83adef05ff111abb1c4382322026930ec1ccf145ca6d7ed5f8f63c658be4986"
* version = "0.0"
* name = "FullIgRORLocationMustSupportElementLocationManagingOrganization"
* title = "IG: full-ig; Profile: RORLocation; Case: Must Support Element; Element: Location.managingOrganization"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORLocation"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location)
* variable[0].name = "targetResourceIdRORLocation"
* variable[=].defaultValue = "example"
* variable[=].description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORLocation."
* variable[=].hint = "[resource.id]"
* variable[+].name = "referencedInstanceRef"
* variable[=].expression = "Location.managingOrganization.reference"
* variable[=].sourceId = "targetInstance"
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
* test.action[+].assert.label = "resolved_path_contains_reference_element"
* test.action[=].assert.description = "resolved path contains reference element"
* test.action[=].assert.expression = "Location.managingOrganization.reference.hasValue()"
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