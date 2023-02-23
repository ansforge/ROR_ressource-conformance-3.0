Instance: ror-sp-residential-number
InstanceOf: SearchParameter
Usage: #definition
* status = #active 
* name = "RORSPResidentialNumber"
* description = "Paramètre de recherche pour récupérer le nombre d'habitation"
* code = #residential-number
* base = #Location
* type = #number
* expression = "Location.extension.where(url='https://interop.esante.gouv.fr/ig/fhir/ror30StructureDefinition/ROR_ResidentialCapacity').extension(url='residentialNumber').valueInteger"