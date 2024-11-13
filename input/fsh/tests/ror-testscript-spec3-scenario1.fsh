Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

Instance: ror-testscript-spec3-scenario1
InstanceOf: TestScript
Usage: #definition
* url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-testscript-spec3-scenario1"
* version = "1.0"

* name = "Recherche d'offre sur critères principaux : Scenario 1"
* title = "Recherche sur un critère en saisissant une valeur"
* status = #draft
* experimental = true
* date = "2024-01-13"
* publisher = "ANS"
* description = "Recherche des offres caractérisées par l’activité opérationnelle « 227 - Pédopsychiatrie infanto-juvénile »"
* purpose = "Un consommateur cherche les offres ayant une activité opérationnelle qui correspond à l’unique valeur recherchée par le consommateur."
* metadata.link.url = "https://ansforge.github.io/IG-fhir-repertoire-offre-ressources-sante/ig/narratif-scenario-retour-platine/specifications_techniques_3.html#sc%C3%A9nario-1-recherche-sur-un-crit%C3%A8re-en-saisissant-une-valeur"
* metadata.capability.required = true
* metadata.capability.validated = false
* metadata.capability.description = "Search Operation"
* metadata.capability.link = "http://hl7.org/fhir/R4/http.html#search"
* metadata.capability.capabilities = "CapabilityStatement/ror-consommateur"
//* fixture.id = "fixture-patient-create"
* fixture.autocreate = false
* fixture.autodelete = false
//* fixture.resource = Reference(Patient/example) "Peter Chalmers"
* profile.id = "bundle-profile"
* profile = Reference(Bundle)
* variable[0].name = "HealthcareServiceSpecialty"
* variable[=].description = "critère de recherche sur l’activité opérationnelle"
* variable[=].hint = "[Specialty]"
* variable[+].name = "OffreSearchBundleTotal"
* variable[=].description = "Nombre d'offres retournées par le searchset Bundle.total"
* variable[=].expression = "Bundle.total.toInteger()"
/* * setup.action[0].operation.type = $testscript-operation-codes#search
* setup.action[=].operation.resource = #HealthcareService
* setup.action[=].operation.description = "Test simple search to verify server support."
* setup.action[=].operation.accept = #json
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.params = ""
* setup.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "200"
* setup.action[=].assert.warningOnly = false
* setup.action[+].assert.description = "Confirm that the returned resource type is Bundle."
* setup.action[=].assert.resource = #Bundle
* setup.action[=].assert.warningOnly = false
* setup.action[+].assert.description = "Confirm that the returned Bundle correctly defines the navigation links."
* setup.action[=].assert.navigationLinks = true
* setup.action[=].assert.warningOnly = false */

* test[0].id = "spec3-scenario1"
* test[=].name = "Recherche sur un critère en saisissant une valeur"
* test[=].description = "Search for Patient resources using the user defined dynamic variables ${PatientSearchFamilyName} and ${PatientSearchGivenName} and validate response."
* test[=].action[0].operation.type = $testscript-operation-codes#search
* test[=].action[=].operation.resource = #HealthcareService
* test[=].action[=].operation.description = "Recherche des offres caractérisées par l’activité opérationnelle « 227 - Pédopsychiatrie infanto-juvénile »."
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.params = "?specialty=https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle|227&_include=HealthcareService:organization&_include:iterate=Organization:partof&_include=HealthcareService:location&_revinclude=PractitionerRole:service&_include=PractitionerRole:practitioner"
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Confirm that the returned format is JSON."
* test[=].action[=].assert.contentType = #json
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Confirm that the returned resource type is Bundle."
* test[=].action[=].assert.resource = #Bundle
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Confirm that the returned Bundle conforms to the base FHIR specification."
* test[=].action[=].assert.validateProfileId = "bundle-profile"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Confirm that the returned Bundle type equals 'searchset'."
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.path = "fhir:Bundle/fhir:type/@value"
* test[=].action[=].assert.value = "searchset"
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Confirm that the returned Bundle total is greater than or equal to the number of returned entries."
* test[=].action[=].assert.expression = "Bundle.total.toInteger() >= entry.count()"
* test[=].action[=].assert.warningOnly = false