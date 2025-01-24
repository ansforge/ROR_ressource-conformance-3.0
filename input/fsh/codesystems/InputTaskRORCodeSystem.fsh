CodeSystem: InputTaskRORCodeSystem
Id: input-task-ror-codesystem
Description: "Code System pour la définition des éléments spécifiques de input dans ressource RORTask"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^experimental = true
* ^caseSensitive = true 
* ^compositional = false
* ^content = #complete
* #ruleErrorId "ruleErrorId" "Identifiant de la règle à l'origine de l'anomalie"
* #errorValue "errorValue" "donnée erronée"
* #proposedValue "proposedValue" "nouvelle valeur proposée"
* #pathElementError "pathElementError" "élément en erreur dans la ressource"
* #systemRequester "systemRequester" "système déclarant l'anomalie"
* #identifierRequester "identifierRequester" "Identifiant du déclarant de l'anomalie"
