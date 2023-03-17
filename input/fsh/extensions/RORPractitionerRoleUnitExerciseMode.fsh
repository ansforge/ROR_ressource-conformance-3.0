Extension: RORPractitionerRoleUnitExerciseMode
Id: ror-practitionerrole-unit-exercise-mode
Description: "Extension créée dans le cadre du ROR qui correspond au statut du professionnel lorsqu'il exerce dans le cadre de l'offre décrite."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $JDV-J217-ModeExercice-ROR (required)