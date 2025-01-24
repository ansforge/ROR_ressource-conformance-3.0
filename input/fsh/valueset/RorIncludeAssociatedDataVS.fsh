ValueSet: RorIncludeAssociatedDataVS
Id: ror-include-associated-data-vs
Title: "Value Set afin d'étendre le Value Set pour query parameter includeAssociatedData"
Description: "Value Set pour étendre http://hl7.org/fhir/uv/bulkdata/ValueSet/include-associated-data et utiliser _[custom value] pour utiliser le query parameter includeAssociatedData"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true
* include codes from system http://hl7.org/fhir/uv/bulkdata/CodeSystem/include-associated-data
* include codes from system ror-include-associated-data-code-system