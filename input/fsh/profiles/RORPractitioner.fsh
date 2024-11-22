Profile: RORPractitioner
Parent: as-practitioner
Id: ror-practitioner
Description: "Profil créée dans le cadre du ROR pour décrire les données d'identification pérennes d’une personne physique, qui travaille en tant que professionnel"

/* Données techniques */
* meta.lastUpdated 1..1 MS
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "url"
* meta.tag ^slicing.rules = #open
* meta.tag ^slicing.description = "Slicing pour gérer le code région définissant la région source des données"
* meta.tag ^slicing.ordered = false
* meta.tag contains
    codeRegion 0..1 MS
* meta.tag[codeRegion] from $JDV-J237-RegionOM-ROR (required)

/* Données fonctionnelles */

* name.prefix 0..1 MS
* name.prefix from $JDV-J207-Civilite-ROR (extensible)
* name.prefix ^short = "Civilite (PersonnePhysique) : Civilite de la personne physique"
/** identifier 1..1 MS
* identifier ^short = "idNat_PS (Professionnel) : Identification nationale du professionnel définie par le CI-SIS"
* identifier.system = "urn:oid:1.2.250.1.71.4.2.1" //voir issue https://github.com/ansforge/IG-fhir-repertoire-offre-ressources-sante/issues/100*/
* identifier[idNatPs] 1..1 MS // à voir si besoin fonctionnel de mettre 0..0 sur les autres slices héritées RPPS et ADELI ou de les autoriser dans le cadre du ROR
* identifier[rpps] 0..0
* identifier[adeli] 0..0

* telecom MS
* telecom ^short = "boiteLettreMSS (Professionnel) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) au professionnel"
* telecom.value 1..1 MS
* telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* telecom.extension ^slicing.discriminator.type = #value
* telecom.extension ^slicing.discriminator.path = "url"
* telecom.extension ^slicing.rules = #open
* telecom.extension contains 
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 MS and
    RORTelecomUsage named ror-telecom-usage 0..1 MS and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 MS
* telecom.extension[ror-telecom-communication-channel] ^short = "canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* qualification.issuer only Reference(as-organization or ROROrganization)

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"

Mapping:  ConceptMetier_RORPractitioner
Source:   RORPractitioner
Id:       specmetier-to-RORPractitioner
Title:    "Practitioner du Modèle exposition ROR V3"
* -> "Professionnel"

* id -> "metadonnee.identifiant"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource"

* identifier -> "idNat_PS"
* name.prefix -> "PersonnePhysique.civilite"

* telecom -> "boiteLettreMSS.adresseMSS"
* telecom.value -> "adresseTelecom"
