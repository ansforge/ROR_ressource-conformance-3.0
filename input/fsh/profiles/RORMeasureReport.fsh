Profile: RORMeasureReport
Parent: MeasureReport
Id: ror-measurereport
Description: "Valeur pour un indicateur de pilotage du ROR National"
* ^status = #draft

/* Données fonctionnelles */
* identifier 1..1
* identifier ^short = "Identifiant de l'indicateur de pilotage du ROR National"
* status MS //Status required doit correspondre au valueset exigé par FHIR dans hhttp://hl7.org/fhir/R4/valueset-measure-report-status.html (Required)
* status ^short = "Statut de la mesure de l'indicateur de pilotage du ROR National"
* type ^short = "Type de mesure" // utilisation du valueSet http://hl7.org/fhir/R4/valueset-measure-report-type.html (Required)
* measure ^short = "L'indicateur de pilotage du ROR National calculé"
* measure Canonical(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-measure)
* date 1..1
* subject only Reference(RORPractitioner or RORPractitionerRole or RORLocation or RORHealthcareService or ROROrganization or RORTask)
* reporter only Reference(RORPractitioner or RORPractitionerRole or RORLocation or ROROrganization)
* date ^short = "Date de la mesure"
* period ^short = "Période de la mesure"
* group.code 1..1
* group.code ^short = "Code du groupe popu"
* group.measureScore 1..1