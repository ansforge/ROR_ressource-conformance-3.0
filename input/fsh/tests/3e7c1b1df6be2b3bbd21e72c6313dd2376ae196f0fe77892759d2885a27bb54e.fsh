Instance: 3e7c1b1df6be2b3bbd21e72c6313dd2376ae196f0fe77892759d2885a27bb54e
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/3e7c1b1df6be2b3bbd21e72c6313dd2376ae196f0fe77892759d2885a27bb54e"
* version = "0.0"
* name = "FullIgRORTaskMustSupportElementTaskInputErrorValue"
* title = "IG: full-ig; Profile: RORTask; Case: Must Support Element; Element: Task.input:errorValue"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:09+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORTask"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task)
* variable.name = "targetResourceIdRORTask"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORTask."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORTask profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #Task
* test.action[=].operation.label = "Read_Task_Instance"
* test.action[=].operation.description = "Read Task Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORTask}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Task_Returned"
* test.action[=].assert.description = "Assert Task Returned"
* test.action[=].assert.resource = #Task
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORTask_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORTask Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORTask"
* test.action[=].assert.warningOnly = false