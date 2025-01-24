ValueSet: CodeRegionTerritorialDivisionRORValueSet
Id: code-region-territorial-division-ror-valueset
Title: "Fusion des valuesets pour le code de la division territoriale"
Description: "ValueSet regroupant des valuesets du NOS pour le code de la division territoriale"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true
* include codes from valueset $JDV-J124-Commune
* include codes from valueset $JDV-J248-DepartementOM-ROR
* include codes from valueset $JDV-J237-RegionOM-ROR
* include codes from valueset $JDV-J249-TerritoireSante-ROR
* include codes from valueset $JDV-J247-Pays-ROR