Instance: 32a00511f98e7ff8b88c971f81f9aeb2cfe5ae8e74f0f4ffac40104328da9715
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/32a00511f98e7ff8b88c971f81f9aeb2cfe5ae8e74f0f4ffac40104328da9715"
* version = "0.0"
* name = "FullIgRORMeasureReportMustSupportElementMeasureReportDate"
* title = "IG: full-ig; Profile: RORMeasureReport; Case: Must Support Element; Element: MeasureReport.date"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:08+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORMeasureReport"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measurereport)
* variable.name = "targetResourceIdRORMeasureReport"
* variable.defaultValue = "example"
* variable.description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORMeasureReport."
* variable.hint = "[resource.id]"
* test.name = "Validate the identified resource conforms to the RORMeasureReport profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #MeasureReport
* test.action[=].operation.label = "Read_MeasureReport_Instance"
* test.action[=].operation.description = "Read MeasureReport Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORMeasureReport}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_MeasureReport_Returned"
* test.action[=].assert.description = "Assert MeasureReport Returned"
* test.action[=].assert.resource = #MeasureReport
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORMeasureReport_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORMeasureReport Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORMeasureReport"
* test.action[=].assert.warningOnly = false