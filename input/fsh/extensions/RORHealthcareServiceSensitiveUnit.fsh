Extension: RORHealthcareServiceSensitiveUnit
Id: ror-healthcareservice-sensitive-unit
Description: "Extension créée dans le cadre du ROR pour signaler que toutes les informations de description d'une offre sont confidentielles car elles présentent un risque d'utilisation à des fins malveillantes, ou que le porteur d'offre ne souhaite pas diffuser."
* ^context.type = #element
* ^context.expression = "HealthcareService"
* value[x] only boolean

Mapping:  ConceptMetier_RORHealthcareServiceSensitiveUnit
Source:   RORHealthcareServiceSensitiveUnit
Id:       specmetier-to-RORHealthcareServiceSensitiveUnit
Title:    "Spécification métier vers l'extension ROR HealthcareServiceSensitiveUnit"
* valueBoolean -> "uniteSensible" "Profil 1"