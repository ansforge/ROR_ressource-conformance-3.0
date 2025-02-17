Instance: ror-consommateur
InstanceOf: CapabilityStatement
Usage: #definition

* status = #draft
* name = "RORConsommateur"
* title = "ROR-Consommateur"
* experimental = true
* date = "2024-03-12T11:35:00+01:00"
* description = "Capability Statement pour les systèmes qui sont autorisés à consommer les données du ROR. Le Répertoire Opérationnel des Ressources (ROR) est le gisement de données qui décrit les offres de santé au niveau national."
* kind = #requirements
* fhirVersion = #4.0.1

* instantiates = "http://hl7.org/fhir/uv/bulkdata/CapabilityStatement/bulk-data"
* instantiates.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* instantiates.extension.valueCode = #SHOULD

* format[+] = #application/fhir+json
* format[+] = #application/fhir+ndjson
* patchFormat[0] = #application/fhir+json
* implementationGuide[+] = "https://interop.esante.gouv.fr/ig/fhir/ror/ImplementationGuide/ans.fhir.fr.ror"
* implementationGuide[+] = "http://hl7.org/fhir/uv/bulkdata/ImplementationGuide/hl7.fhir.uv.bulkdata"

* rest.mode = #client
* rest.documentation = "Recherche d'offres de soins de santé et de leurs capacités"
* rest.security.cors = false
* rest.security.service = $restful-security-service#OAuth
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

//Search Params toutes ressources

* rest.searchParam[+].name = "_count"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-count"
* rest.searchParam[=].type = #number
* rest.searchParam[=].documentation = "Permet de choisir le nombre de résultat par page (Par défaut la recherche retourne 200 résultats maximum par page.)"

* rest.searchParam[+].name = "_sort"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-source"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Permet de choisir dans quel ordre renvoyer les résultats"

* rest.searchParam[+].name = "_elements"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-elements"
* rest.searchParam[=].type = #string
* rest.searchParam[=].documentation = "Permet au consommateur de demander les éléments à retourner de la ressource recherchée"

* rest.searchParam[+].name = "_include"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-include"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Permet d'inclure des ressources référencées par la ressource recherchée dans le résultat"

* rest.searchParam[+].name = "_revinclude"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-revinclude"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Permet d'inclure les ressources qui font référence à la ressource recherchée dans le résultat"

// Location
* rest.resource[+].type = #Location
* rest.resource[=].profile = Canonical(ror-location)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
* rest.resource[=].searchRevInclude = "HealthcareService:location"


* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

/* * rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource" */


* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date de la dernière mise a jour de la ressource"

* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le code de la région de la source de la donnée"

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur sur la destination d'usage du lieu"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant logique du lieu de réalisation de l'offre. Il correspond à l'identifiant externe de synchronisation est l'identifiant défini par le porteur d'offre pour la zone d'hébergement des lits."

* rest.resource[=].searchParam[+].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la recherche positionnelle (coordonnées géographique): lieux proches du lieu de réalisation de l'offre"

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le statut de la ressource"

* rest.resource[=].searchParam[+].name = "operational-status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-operational-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le statut opérationnel du lieu, fermé temporairement ou fermé définitivement."

* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le code Postal ou code postal spécifique CEDEX"

* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la localité ou Libellé du bureau distributeur CEDEX"

* rest.resource[=].searchParam[+].name = "capacity-status"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-status)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le statut de la capacité"

* rest.resource[=].searchParam[+].name = "nb-capacity"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-nb-capacity)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la quantité de lits ou places de la capacité exprimée"

* rest.resource[=].searchParam[+].name = "additional-bed-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-additional-bed-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type des lits disponibles"

* rest.resource[=].searchParam[+].name = "capacity-closing-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-closing-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type de la fermeture de la capacité"

* rest.resource[=].searchParam[+].name = "capacity-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la nature de la capacité"

* rest.resource[=].searchParam[+].name = "capacity-update-date"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-capacity-update-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date à laquelle la capacité d'accueil a été mise à jour dans la source."

* rest.resource[=].searchParam[+].name = "crisis-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-crisis-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type de la crise qui permet de mobiliser le nombre de lits supplémentaires décrits."

* rest.resource[=].searchParam[+].name = "equipment-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type d'un equipement. Les équipements spécifiques décrits sont des ressources propres de la structure ou mises à disposition dans le cadre d'une convention à la condition qu'elles soient utilisées sur site."

* rest.resource[=].searchParam[+].name = "equipment-feature"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-equipment-feature)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'élément qui indique la caractéristique de l'équipement pour laquelle une valeur limite est précisée."

* rest.resource[=].searchParam[+].name = "gender-capacity-available"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-gender-capacity-available)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le genre disponible de la capacité"

* rest.resource[=].searchParam[+].name = "limit-value"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-limit-value)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la valeur limite : correspond à la valeur extrême associée à une caractéristique de l'équipement."

* rest.resource[=].searchParam[+].name = "commune-cog"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-commune-cog)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le code officiel géographique (cog) de la commune dans laquelle le lieu est situé"

* rest.resource[=].searchParam[+].name = "near-insee-code"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-location-near-insee-code)
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la recherche positionnelle (code INSEE commune) : lieux proches du lieu de réalisation de l'offre via le code COG INSEE"

* rest.resource[=].searchParam[+].name = "residential-number"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-number)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le nombre d'habitation du même type."

* rest.resource[=].searchParam[+].name = "residential-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-residential-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type d'habitation."

* rest.resource[=].searchParam[+].name = "temporality-capacity"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporality-capacity)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la capacité des affectations temporaires. Indique le moment où cette capacité sera effective. Il est ainsi possible de décrire la situation immédiate, ou de fournir des informations prospectives de capacités, prenant notamment en compte les entrées et sorties déjà identifiés de patients."

* rest.resource[=].searchParam[+].name = "temporary-assignement"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-temporary-assignement)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur les affectations temporaires. L'affectation temporaire permet de réserver tout ou partie des lits d'une zone d'hébergement pour des patients selon qu'ils soient -ou non- concernés par une pathologie (Covid+, Covid-, ...) ou un évènement (catastrophe naturelle, attentat, ...)."

// HealthcareService
* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = Canonical(ror-healthcareservice)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
//* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."
* rest.resource[=].searchInclude = "HealthcareService:organization, HealthcareService:location, Organization:partof, PractitionerRole:practitioner"
* rest.resource[=].searchRevInclude = "PractitionerRole:service, Task:focus"

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"

* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le code de la région de la source de la donnée"

/* * rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le contenu textuel de la ressource" non implémenté à date*/

* rest.resource[=].searchParam[+].name = "_has"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Fournit une syntaxe pour filtrer de manière plus complexe"

/* * rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Référence à la ressource Location" */

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant métier de l’offre"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la dénomination sous laquelle l'offre est identifiée"

* rest.resource[=].searchParam[+].name = "service-category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type d'offre"

* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le domaine dans lequel s'inscrit l'offre"

* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur les caractéristiques de l'offre"

* rest.resource[=].searchParam[+].name = "specialty"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-specialty"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"

* rest.resource[=].searchParam[+].name = "age-range-high"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-age-range-high)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'age maximum de la patientèle"

* rest.resource[=].searchParam[+].name = "age-range-low"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-age-range-low)
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'age minimum de la patientèle"

* rest.resource[=].searchParam[+].name = "intervention-zone"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-intervention-zone)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la zone d'intervention"

* rest.resource[=].searchParam[+].name = "patient-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-patient-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type de public pris en charge"

* rest.resource[=].searchParam[+].name = "psychiatric-sector"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-psychiatric-sector)
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le secteur psychiatrique de l'offre opérationnelle"

* rest.resource[=].searchParam[+].name = "notavailable-closing-reopeningdate"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-healthcareservice-notavailable-closing-reopeningdate)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche de date dans la période de fermeture (during.start) et de réouverture prévisionnelle (during.end)"

// Organization
* rest.resource[+].type = #Organization
* rest.resource[=].profile = Canonical(ror-organization)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date de la dernière mise a jour"

* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le code de la région de la source de la donnée"

/* * rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"
*/
* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identification nationale de l'Entité Géographique définie dans le CI-SIS"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le nom de l'organisation interne"

* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique"

* rest.resource[=].searchParam[+].name = "closing-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-closing-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type de fermeture de l'entité géographique, au sens des règles de gestion du SI FINESS"

* rest.resource[=].searchParam[+].name = "drop-zone"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-drop-zone)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Indique s'il y a une zone poser sur le site concerné"

* rest.resource[=].searchParam[+].name = "period-end"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-period-end)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date de fermeture de l'entité géographique"

* rest.resource[=].searchParam[+].name = "price-amount-value"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-amount-value)
* rest.resource[=].searchParam[=].type = #number
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la valeur du tarif des prestations et services"

* rest.resource[=].searchParam[+].name = "price-dependency-level"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-dependency-level)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le niveau de dépendance de la personne âgée accueillie"

* rest.resource[=].searchParam[+].name = "price-residential-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-residential-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur les caractéristiques tarifaires de l'hébergement"

* rest.resource[=].searchParam[+].name = "price-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le type de tarif"

* rest.resource[=].searchParam[+].name = "price-unit"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-unit)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'unité de référence pour évaluer le prix des prestations et services"

* rest.resource[=].searchParam[+].name = "price-validity-start-date"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-validity-start-date)
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la dernière date de début de validité du tarif indiqué"

* rest.resource[=].searchParam[+].name = "price-welcome-type"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-price-welcome-type)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = " Permet la recherche sur le tarif applicable à un hébergement permanent ou à un hébergement temporaire"

* rest.resource[=].searchParam[+].name = "special-price"
* rest.resource[=].searchParam[=].definition = Canonical(ror-sp-organization-special-price)
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la condition tarifaire"

// Practitioner
* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = Canonical(ror-practitioner)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
/*
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS"

* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"
*/

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"

* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
/*
* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource" */

// PractitionerRole
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = Canonical(ror-practitionerrole)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
/*
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant de la situation opérationnelle, unique et persistant au niveau national"

* rest.resource[=].searchParam[+].name = "_filter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-filter"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Paramètre de recherche de filtre qui prend en charge une grammaire de recherche plus sophistiquée. Voir la [documentation](https://hl7.org/fhir/search_filter.html) pour plus de détails"
*/

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de la dernière mise a jour"

* rest.resource[=].searchParam[+].name = "_tag"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-tag"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code de la région de la source de la donnée"
/*
* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource" */

// Task
* rest.resource[+].type = #Task
* rest.resource[=].profile = Canonical(ror-task)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #patch
* rest.resource[=].interaction[=].documentation = "Seuls les attributs de 'premier niveau' peuvent être mis à jour avec l'interaction patch."

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

/* // Measure

* rest.resource[+].type = #Measure
* rest.resource[=].profile = Canonical(ror-measure)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].searchRevInclude = "MeasureReport:measure"

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_has"
// * rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Permet la sélection des ressources en fonction des propriétés des ressources qui y font référence (reverse chaining)"

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Measure-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de l'indicateur"

* rest.resource[=].searchParam[+].name = "topic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Measure-topic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Sujet de la mesure" */

/* // MeasureReport
* rest.resource[+].type = #MeasureReport
* rest.resource[=].profile = Canonical(ror-measurereport)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

* rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MeasureReport-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de mesure" */

* rest.resource[+].type = #Questionnaire
* rest.resource[=].profile = Canonical(ror-questionnaire)
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #read

* rest.resource[=].searchParam[+].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant logique de la ressource"

/** rest.resource[=].searchParam[+].name = "_content"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-content"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Recherche dans le contenu textuel de la ressource"

* rest.resource[=].searchParam[+].name = "_lastUpdated"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date de la dernière mise a jour de la ressource"

* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur l'identifiant de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le statut de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche selon la catégorie de la fiche. Voir [scenario exemple](consignes_fiche_saisie_offre.html#sc%C3%A9nario-4-un-consommateur-souhaite-r%C3%A9cup%C3%A9rer-un-ensemble-de-fiches-de-saisie-sur-un-crit%C3%A8re-donn%C3%A9)"

* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le nom de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur le titre de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "description"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Permet la recherche dans la description de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-version"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la version de la fiche de consignes"

* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la date de publication de la fiche de consignes"*/

/** rest.resource[=].searchParam[+].name = "effective"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Questionnaire-effective"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Permet la recherche sur la période pendant laquelle la fiche est effective"*/

// bulk data export from hl7.fhir.uv.bulkdata: 2.0.0
* rest.operation[+].name = "export"
* rest.operation[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.operation[=].extension.valueCode = #SHOULD
* rest.operation[=].definition = "http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export"
* rest.operation[=].documentation = "Utilisation de https://hl7.org/fhir/uv/bulkdata/export.html avec ajout de la valeur _myCompleteExtract pour utiliser le query parameter includeAssociatedData."