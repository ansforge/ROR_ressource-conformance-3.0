Instance: d8109a130123b0930ef4a53f1226dd7fd95690ca9a61877f11009807d19458dd
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/d8109a130123b0930ef4a53f1226dd7fd95690ca9a61877f11009807d19458dd"
* version = "0.0"
* name = "FullIgRORTaskMustSupportElementTaskFocus"
* title = "IG: full-ig; Profile: RORTask; Case: Must Support Element; Element: Task.focus"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:09+01:00"
* publisher = "The MITRE Corporation"
* profile[0].id = "targetProfileRORTask"
* profile[=] = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-task)
* profile[+].id = "referencedProfile"
* profile[=] = Reference(http://hl7.org/fhir/StructureDefinition/Resource)
* variable[0].name = "targetResourceIdRORTask"
* variable[=].defaultValue = "example"
* variable[=].description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORTask."
* variable[=].hint = "[resource.id]"
* variable[+].name = "referencedInstanceRef"
* variable[=].expression = "Task.focus.reference"
* variable[=].sourceId = "targetInstance"
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
* test.action[+].assert.label = "resolved_path_contains_reference_element"
* test.action[=].assert.description = "resolved path contains reference element"
* test.action[=].assert.expression = "Task.focus.reference.hasValue()"
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
* test.action[+].assert.label = "Validate_Reference"
* test.action[=].assert.description = "Validate Reference"
* test.action[=].assert.validateProfileId = "referencedProfile"
* test.action[=].assert.warningOnly = false