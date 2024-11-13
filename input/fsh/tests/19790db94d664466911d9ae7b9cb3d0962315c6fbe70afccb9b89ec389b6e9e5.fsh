Instance: 19790db94d664466911d9ae7b9cb3d0962315c6fbe70afccb9b89ec389b6e9e5
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/19790db94d664466911d9ae7b9cb3d0962315c6fbe70afccb9b89ec389b6e9e5"
* version = "0.0"
* name = "FullIgRORTaskMustSupportElementTaskReasonCode"
* title = "IG: full-ig; Profile: RORTask; Case: Must Support Element; Element: Task.reasonCode"
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