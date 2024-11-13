Instance: 66808522434d0191801c76d3026073204d5738cc28c879106f2d2847fa907f14
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/66808522434d0191801c76d3026073204d5738cc28c879106f2d2847fa907f14"
* version = "0.0"
* name = "FullIgRORMeasureMustSupportElementMeasureIdentifier"
* title = "IG: full-ig; Profile: RORMeasure; Case: Must Support Element; Element: Measure.identifier"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORMeasure"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measure)
* variable.name = "targetResourceIdRORMeasure"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORMeasure."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORMeasure profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #Measure
* test.action[=].operation.label = "Read_Measure_Instance"
* test.action[=].operation.description = "Read Measure Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORMeasure}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Measure_Returned"
* test.action[=].assert.description = "Assert Measure Returned"
* test.action[=].assert.resource = #Measure
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORMeasure_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORMeasure Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORMeasure"
* test.action[=].assert.warningOnly = false