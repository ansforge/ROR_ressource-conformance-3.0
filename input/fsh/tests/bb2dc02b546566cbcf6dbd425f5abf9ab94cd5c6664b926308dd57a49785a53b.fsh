Instance: bb2dc02b546566cbcf6dbd425f5abf9ab94cd5c6664b926308dd57a49785a53b
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/bb2dc02b546566cbcf6dbd425f5abf9ab94cd5c6664b926308dd57a49785a53b"
* version = "0.0"
* name = "FullIgRORHealthcareServiceMustSupportElementHealthcareServiceProvidedBy"
* title = "IG: full-ig; Profile: RORHealthcareService; Case: Must Support Element; Element: HealthcareService.providedBy"
* status = #draft
* experimental = true
* date = "2024-02-07T19:21:07+01:00"
* publisher = "The MITRE Corporation"
* profile.id = "targetProfileRORHealthcareService"
* profile = Reference(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice)
* variable[0].name = "targetResourceIdRORHealthcareService"
* variable[=].defaultValue = "example"
* variable[=].description = "Enter a known instance id on the destination system. Will be checked for conformance against profile RORHealthcareService."
* variable[=].hint = "[resource.id]"
* variable[+].name = "referencedInstanceRef"
* variable[=].expression = "HealthcareService.providedBy.reference"
* variable[=].sourceId = "targetInstance"
* test.name = "Validate the identified resource conforms to the RORHealthcareService profile"
* test.action[0].operation.type = $testscript-operation-codes#read
* test.action[=].operation.resource = #HealthcareService
* test.action[=].operation.label = "Read_HealthcareService_Instance"
* test.action[=].operation.description = "Read HealthcareService Instance"
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/${targetResourceIdRORHealthcareService}"
* test.action[=].operation.responseId = "targetInstance"
* test.action[+].assert.label = "Assert_Response_OK"
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_HealthcareService_Returned"
* test.action[=].assert.description = "Assert HealthcareService Returned"
* test.action[=].assert.resource = #HealthcareService
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "Assert_Instance_Conforms_to_RORHealthcareService_Profile"
* test.action[=].assert.description = "Assert returned instance conforms to the RORHealthcareService Profile"
* test.action[=].assert.validateProfileId = "targetProfileRORHealthcareService"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.label = "resolved_path_contains_reference_element"
* test.action[=].assert.description = "resolved path contains reference element"
* test.action[=].assert.expression = "HealthcareService.providedBy.reference.hasValue()"
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