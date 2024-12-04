Alias: $TRE-G15-ProfessionSante = https://mos.esante.gouv.fr/NOS/TRE_G15-ProfessionSante/FHIR/TRE-G15-ProfessionSante
Alias: $TRE-R23-ModeExercice = https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice

Instance: ror-practitionerrole-exemple
InstanceOf: RORPractitionerRole
Usage: #example
Description: "Exemple 'fake' pour RORPRactitionerRole n'ayant pas forcément de cohérence fonctionnelle"

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole"
* meta.lastUpdated = "2023-12-20T10:00:00+01:00"
* practitioner = Reference(Practitioner/2524)
* healthcareService = Reference(HealthcareService/9597)
* identifier.value = "11102379616"
* code = $TRE-G15-ProfessionSante#60 "Infirmier"
* specialty[expertiseType].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole.specialty:expertiseType"
* specialty[expertiseType].coding = $TRE-R04-TypeSavoirFaire#CEX "Compétence exclusive"

* extension[0].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date"
* extension[=].valueDateTime = "2023-12-09T14:30:00+01:00"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-name"
* extension[=].extension[0].url = "exerciseFirstName"
* extension[=].extension[=].valueString = "Mylène"
* extension[=].extension[+].url = "exerciseLastName"
* extension[=].extension[=].valueString = "Tenor"
* extension[+].url = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode"
* extension[=].valueCodeableConcept = $TRE-R23-ModeExercice#L "Libéral, indépendant, artisan, commerçant"