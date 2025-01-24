CodeSystem: ActTypeRORCodeSystem
Id: act-type-ror-codesystem
Description: "CodeSystem pour le type d'acte pour les slices de characteristic concernant les actes dans la ressource ROR HealthcareService"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^experimental = true
* ^caseSensitive = true 
* ^compositional = false
* ^content = #complete
* #specificAct "specificAct" "Acte spécifique"
* #outsideOfficeAct "outsideOfficeAct" "Acte hors cabinet"
