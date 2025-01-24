CodeSystem: RorIncludeAssociatedDataCodeSystem
Id: ror-include-associated-data-code-system
Title: "Code System (CS) utilisé pour étendre le CS original avec le query parameter includeAssociatedData"
Description: "Code system pour étendre https://hl7.org/fhir/uv/bulkdata/CodeSystem-include-associated-data.html pour ajouter l'opération export pour le ROR"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^experimental = true
* ^caseSensitive = true
* #_myCompleteExtract "Extraction complète" "Valeur personnalisée pour  le query parameter includeAssociatedData de l'opération export, afin d'inclure toutes les ressources liées à la ressource identifiée dans _type."
