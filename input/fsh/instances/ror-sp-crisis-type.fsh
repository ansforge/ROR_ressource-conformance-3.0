Instance: ror-sp-crisis-type
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "RORSPCrisisType"
* description = "Paramètre de recherche pour récupérer le type de la crise"
* code = #crisis-type
* base = #Location
* type = #token
* expression = "Location.extensionwhere(url='http://interop.esante.gouv.fr/fhir/ig/ror30/StructureDefinition/ror-supported-capacity').extension(url='crisisType').valueCode"