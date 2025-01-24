ValueSet: RORUsageContextTypeVS
Id: ror-usage-context-type-vs
Title: "Value Set type pour le contexte d'usage de la fiche de saisie"
Description: "Extension du Value Set http://hl7.org/fhir/ValueSet/usage-context-type pour fixer le type de contexte d'usage de la fiche de saisie avec le code EG ou le S pour Spécialité ordinale ou P01 pour le type de profession"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true
* include codes from system $usage-context-type
* include codes from system usage-context-ror-codesystem
* $TRE-R67-TypeStructure-EJ-EG#EG
* $TRE-R04-TypeSavoirFaire#S
* $TRE-R288-TypeProfession#P01