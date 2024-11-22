Profile: RORMeasureReport
Parent: MeasureReport
Id: ror-measurereport
Description: "Valeur pour un indicateur de pilotage du ROR National"
* ^status = #draft

/* Données fonctionnelles */
* identifier 1..1 MS
* identifier ^short = "Identifiant de l'indicateur de pilotage du ROR National"
* status MS //Status required doit correspondre au valueset exigé par FHIR dans hhttp://hl7.org/fhir/R4/valueset-measure-report-status.html (Required)
* status ^short = "Statut de la mesure de l'indicateur de pilotage du ROR National"
* type MS
* type ^short = "Type de mesure" // utilisation du valueSet http://hl7.org/fhir/R4/valueset-measure-report-type.html (Required)
* measure MS
* measure ^short = "L'indicateur de pilotage du ROR National calculé"
* subject only Reference(RORPractitioner or RORPractitionerRole or RORLocation or fr-core-location or as-practitioner)
* reporter only Reference(RORPractitioner or RORPractitionerRole or RORLocation or ROROrganization or as-organization or fr-core-location or as-practitioner)
* date 1..1 MS
* date ^short = "Date de la mesure"
* period MS
* period ^short = "Période de la mesure"
* group.code 1..1 MS
* group.code ^short = "Code du groupe popu"
* group.measureScore 1..1 MS