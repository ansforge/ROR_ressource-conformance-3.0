Instance: d5597ec5aafc74ccabc1d5d0c673e6325afbd54c405b6dfc094e0ae417acadc7
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/d5597ec5aafc74ccabc1d5d0c673e6325afbd54c405b6dfc094e0ae417acadc7"
* version = "0.0"
* name = "FullIgRORPractitionerReadProfile"
* title = "IG: full-ig; Profile: RORPractitioner; Case: Read Profile"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:09+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORPractitioner"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner)
* variable.name = "targetResourceIdRORPractitioner"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORPractitioner."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORPractitioner profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #Practitioner
* test.action[=].operation.label = "Read_Practitioner_Instance"
* test.action[=].operation.description = "Read Practitioner Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORPractitioner}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Practitioner_Returned"
* test.action[=].assert.description = "Assert Practitioner Returned"
* test.action[=].assert.resource = #Practitioner
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORPractitioner_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORPractitioner Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORPractitioner"
* test.action[=].assert.warningOnly = false