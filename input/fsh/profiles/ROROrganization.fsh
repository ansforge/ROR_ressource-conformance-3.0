Profile: ROROrganization
Parent: as-organization
Id: ror-organization
Description: "Profil créé dans le cadre du ROR pour décrire les organismes du domaine sanitaire, médico-social et social immatriculés dans le FINESS et les organisations internes"

/* Références*/
* partOf only Reference(as-organization or ROROrganization)
* partOf MS

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
* name MS
* name 0..1
* name ^short = "raisonSociale (EJ) ou denominationEG (EG) ou nomOI (OI) - Remarque : Décalage provisoire de la cardinalité par rapport au modèle d'exposition (1..1)"
* name.extension ^slicing.discriminator.type = #value
* name.extension ^slicing.discriminator.path = "url"
* name.extension ^slicing.rules = #open
* name.extension contains
    ROROrganizationAdditionalName named ror-organization-additional-name 0..1
* name.extension[ror-organization-additional-name] ^short = "complementRaisonSociale (EJ) ou complementDenominationEG (EG)"
* alias MS
* alias 0..1
* alias ^short = "nomOperationnel (EG) : l’appellation communément utilisée par les acteurs de santé pour désigner l'entité géographique"

* identifier MS

* identifier[idNatSt] MS
* identifier[idNatSt] ^short = "idNatstruct (EJ + EG) : Identification nationale définie dans le CI-SIS"
* identifier[idNatSt].type 1..1 MS
//* identifier[idNatSt].type = $TRE-G07-TypeIdentifiantStructure#40 
//* identifier[idNatSt].system = "urn:oid:1.2.250.1.71.4.2.2"

* identifier[finess] 0..1 MS
* identifier[finess] ^short = "numFINESS (EJ + EG) : Numéro FINESS"
* identifier[finess].type 1..1 MS
//* identifier[finess].type = $TRE-G07-TypeIdentifiantStructure#1 
//* identifier[finess].system = "http://finess.esante.gouv.fr"

* identifier[sirene] 0..1 MS
* identifier[sirene] ^short = "numSIREN (EJ) : numéro unique d'identification attribué à chaque entreprise par l'INSEE"
* identifier[sirene].type 1..1 MS
//* identifier[sirene].type = $TRE-G07-TypeIdentifiantStructure#2 
//* identifier[sirene].system = "http://sirene.fr"

* identifier[rppsRang] 0..1 MS
* identifier[rppsRang] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"
* identifier[rppsRang].type 1..1 MS
//* identifier[rppsRang].type = $TRE-G07-TypeIdentifiantStructure#4
//* identifier[rppsRang].system = "http://rppsrang.esante.gouv.fr"

* identifier[adeliRang] 0..1 MS
* identifier[adeliRang] ^short = "numEJ_RPPS_ADELI_Rang ou numEG_RPPS_ADELI_Rang"
* identifier[adeliRang].type 1..1 MS
//* identifier[adeliRang].type = $TRE-G07-TypeIdentifiantStructure#0
//* identifier[adeliRang].system = "http://adelirang.esante.gouv.fr"

/** identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slice de la slice héritée pour répondre au cas d'usage du ROR"*/
* identifier contains
    numSIRET 0..1 MS and 
    identifierOI 0..1 MS 

* identifier[numSIRET] ^short = "numSIRET (EG) : numéro unique d'identification, attribué par l'INSEE, à chaque entité géographique"
* identifier[numSIRET].type 1..1 MS
* identifier[numSIRET].type = $TRE-G07-TypeIdentifiantStructure#3
* identifier[numSIRET].system = "http://sirene.fr"
* identifier[numSIRET].system ^short = "https://mos.esante.gouv.fr/6.html#_4d544200-4d26-4cc5-8294-c862458f60d8"

* identifier[identifierOI] ^short = "identifiantOI (OI) : Identifiant de l'organisation interne, unique et persistant au niveau national"
* identifier[identifierOI].type 1..1 MS
* identifier[identifierOI].type = $TRE-R345-TypeIdentifiantAutre#42
* identifier[identifierOI].system = "https://oi.esante.gouv.fr"
// Slice déjà définie dans FrOrganization

* type MS
* type contains
    //statutJuridiqueINSEE 0..1 MS and
    sousEnsembleAgregatStatutJuridique 0..1 MS and
    categorieEtablissement 0..1 MS and
    //sphParticipation 0..1 MS and
    OIType 0..1 MS
* type[statutJuridiqueINSEE] ^short = "statutJuridique (EJ) : Situation juridique de l’établissement"
* type[statutJuridiqueINSEE] MS
* type[statutJuridiqueINSEE] from $JDV-J199-StatutJuridique-ROR (required)
* type[sousEnsembleAgregatStatutJuridique] ^short = "sousEnsembleAgregatStatutJuridique (EJ) : Deuxième niveau dans l’arborescence des statuts juridiques"
* type[sousEnsembleAgregatStatutJuridique] from $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR (required)
* type[categorieEtablissement] ^short = "categorieEG (EG) : Cadre réglementaire dans lequel s'exerce l'activité de l'entité géographique"
* type[categorieEtablissement] from $JDV-J55-CategorieEG-ROR (required)
* type[sphParticipation] ^short = "modaliteParticipationSPH (EG) : Modalités de participation au service public hospitalier"
* type[sphParticipation] MS
* type[sphParticipation] from $JDV-J202-ESPIC-ROR (required)
* type[OIType] ^short = "typeOI (OI) : Type d'organisation interne"
* type[OIType] from $JDV-J203-TypeOrganisationInterne-ROR (required)

* contact.name MS
* contact.name ^short  = "Nom (Contact) : Un nom de la personne ou du service à contacter"
* contact.extension ^slicing.discriminator.type = #value
* contact.extension ^slicing.discriminator.path = "url"
* contact.extension ^slicing.rules = #open
* contact.extension contains
    RORContactFunctionContact named ror-contact-function-contact 0..1 MS and
    RORContactDescription named ror-contact-description 0..1 MS and
    RORContactConfidentialityLevel named ror-contact-confidentiality-level 0..1 MS
* contact.extension[ror-contact-function-contact] ^short = "fonctionContact (Contact) : Un titre, une position ou une fonction de la personne assurant le contact au sein de l'organisation"
* contact.extension[ror-contact-description] ^short = "description (Contact) : Une description du contact"
* contact.extension[ror-contact-confidentiality-level] ^short = "niveauConfidentialite (Contact) : Niveau de restriction de l'accès aux attributs de la classe Contact"
* contact.purpose MS
* contact.purpose ^short = "natureContact (Contact) : Un service ou un guichet assurant le contact au sein de l'organisation"
* contact.purpose from $JDV-J221-NatureContact-ROR (required)
* contact.telecom.value 1..1 MS
* contact.telecom.value ^short = "adresseTelecom (Telecommunication) : Valeur de l'adresse de télécommunication dans le format induit par le canal de communication"
* contact.telecom.extension ^slicing.discriminator.type = #value
* contact.telecom.extension ^slicing.discriminator.path = "url"
* contact.telecom.extension ^slicing.rules = #open
* contact.telecom.extension contains
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 MS and
    RORTelecomUsage named ror-telecom-usage 0..1 MS and
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 MS
* contact.telecom.extension[ror-telecom-communication-channel] ^short = "Canal (Telecommunication) : Code spécifiant le canal ou la manière dont s'établit la communication"
* contact.telecom.extension[ror-telecom-usage] ^short = "utilisation (Telecommunication) : Utilisation du canal de communication"
* contact.telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* address 0..1 MS
* address ^short = "adresseEJ : Adresse géopostale de l'entité juridique ou adresseEG : Adresse(s) géopostale(s) de l'entité géographique."
* address.postalCode MS
* address.postalCode ^short = "codePostal (Adresse) : Code Postal ou code postal spécifique CEDEX"
* address.city MS
* address.city ^short = "localité (Adresse) : Localité ou Libellé du bureau distributeur CEDEX"
* address.extension[inseeCode].valueCoding from $JDV-J124-Commune (required)
* address.extension contains
    $geolocation named ror-organization-geolocation 0..1 MS
* address.extension[ror-organization-geolocation] ^short = "extension pour définir les données de géolocalisation de l'EG"
* address.extension[ror-organization-geolocation].extension contains
    RORConfidenceGeolocation named ror-confidence-geolocation 0..1 MS
//* address.line.extension contains
    //iso21090-ADXP-careOf named careOf 0..1 MS and
    //iso21090-ADXP-additionalLocator named additionalLocator 0..1 MS and
    //iso21090-ADXP-houseNumber named houseNumber 0..1 MS and
    //iso21090-ADXP-buildingNumberSuffix named buildingNumberSuffix 0..1 MS and
    //iso21090-ADXP-streetNameType named streetNameType 0..1 MS and
    //iso21090-ADXP-postBox named postalBox 0..1 MS
    //iso21090-ADXP-streetNameBase named streetNameBase 0..1 MS and
    //as-ext-lieu-dit named lieuDit 0..1 MS
* address.line.extension[careOf] MS
* address.line.extension[additionalLocator] MS
* address.line.extension[houseNumber] MS
* address.line.extension[buildingNumberSuffix] MS
* address.line.extension[streetNameType] MS
//* address.line.extension[streetNameType].valueString from $JDV-J219-TypeVoie-ROR (required)
* address.line.extension[postBox] MS
* address.line.extension[streetNameBase] MS
* address.line.extension[lieuDit] MS


* telecom MS
* telecom ^short = "boiteLettreMSS (OffreOperationnelle) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’organisation interne"
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
* telecom.extension[ror-telecom-confidentiality-level] ^short = "niveauConfidentialite (Telecommunication) : Niveau de restriction de l'accès aux attributs de la classe Télécommunication"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ROROrganizationPrice named ror-organization-price 0..* MS and
    RORTerritorialDivision named ror-territorial-division 0..* MS and
    ROROrganizationFinancialHelpType named ror-organization-financial-help-type 0..* MS and
    ROROrganizationAccomodationFamily named ror-organization-accomodation-family 0..1 MS and
    ROROrganizationNbPermanentSocialHelpPlace named ror-organization-nb-permanent-social-help-place 0..1 MS and
    ROROrganizationNbTemporarySocialHelpPlace named ror-organization-nb-temporary-social-help-place 0..1 MS and
    ROROrganizationAccessibilityLocation named ror-organization-accessibility-location 0..1 MS and
    ROROrganizationLevelRecourseORSAN named ror-organization-level-recourse-orsan 0..1 MS and
    ROROrganizationDropZone named ror-organization-drop-zone 0..1 MS and
    ROROrganizationReopeningDate named ror-organization-reopening-date 0..1 MS and
    ROROrganizationCreationDate named ror-organization-creation-date 0..1 MS and
    ROROrganizationClosingType named ror-organization-closing-type 0..1 MS and
    organization-period named organization-period 0..1 MS and
    RORMetaComment named ror-meta-comment 0..1 MS and
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS and 
    ROROrganizationComment named ror-organization-comment 0..1 MS
* extension[ror-organization-price] ^short = "Tarif"
* extension[ror-territorial-division] ^short = "territoireSante (EG) : Territoire(s) de santé où est située l'entité géographique"
* extension[ror-organization-financial-help-type] ^short = "aideFinanciere (EG) : Aide financière pour laquelle l'EG dispose d'une habilitation ou conventionnement"
* extension[ror-organization-accomodation-family] ^short = "hebergementFamille (EG) : Indique si l'établissement peut héberger les familles des personnes prises en charge"
* extension[ror-organization-nb-permanent-social-help-place] ^short = "nbPlaceAideSocialTemporaire (EG) : nombre de places temporaires dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-nb-temporary-social-help-place] ^short = "nbPlaceAideSocialPermanent (EG) : nombre de places permanentes dédiées à l'aide sociale dans l'établissement"
* extension[ror-organization-accessibility-location] ^short = "accessibiliteLieu (EG) : Précise dans quelle mesure les locaux sont conformes aux dispositions règlementaires relatives à l’accessibilité des établissements recevant du public"
* extension[ror-organization-level-recourse-orsan] ^short = "niveauRecoursORSAN (EG) : Hiérarchisation fonctionnelle de la mobilisation des établissements pour accueillir les patients après régulation par le SAMU"
* extension[ror-organization-drop-zone] ^short = "zonePoser (EG) : Précise l’existence d’une zone de poser pour hélicoptère sur le site concerné"
* extension[ror-organization-reopening-date] ^short = "datePrevisionnelleReouverture (OI) : Date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée"
* extension[ror-organization-creation-date] ^short = "dateCreation (EJ) : Date de création de l'entité juridique"
* extension[ror-organization-closing-type] ^short = "typeFermeture (EJ + EG + OI) : Le type de fermeture d'un niveau organisationnel indique la temporalité de la fermeture."
* extension[organization-period] ^short = "dateOuverture (EJ + OI) + dateFermeture (EJ + EG + OI)"
* extension[ror-meta-comment] ^short = "commentaire (Metadonnee)"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"
* extension[ror-organization-comment] ^short = "commentaire (EG) : Commentaire qui permet à la structure de donner des informations complémentaires"

Mapping:  ConceptMetier_ROROrganization_EJ
Source:   ROROrganization
Id:       specmetier-to-ROROrganization-ej
Title:    "EntiteJuridique du Modèle exposition ROR V3"
* -> "EntiteJuridique"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* identifier[idNatSt] -> "idNatstruct" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[finess] -> "numFINESS" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[sirene] -> "numSIREN" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[rppsRang] -> "numEJ_RPPS_ADELI_Rang" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[adeliRang] -> "numEJ_RPPS_ADELI_Rang"

* name -> "raisonSociale" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* name.extension[ror-organization-additional-name] -> "complementRaisonSociale"

* type[statutJuridiqueINSEE] -> "statutJuridique" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* type[sousEnsembleAgregatStatutJuridique] -> "sousEnsembleAgregatStatutJuridique" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* contact -> "contact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.name -> "nom" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.purpose -> "natureContact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.telecom -> "telecommunication" "Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"
* contact.telecom.value -> "adresseTelecom" "Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"

* address -> "adresseEJ" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.city -> "localite" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.postalCode -> "codePostal" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[careOf].valueString -> "pointRemise" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[additionalLocator].valueString -> "complementPointGeographique" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[houseNumber].valueString -> "numeroVoie" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[buildingNumberSuffix].valueString -> "extension" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[streetNameType].valueString -> "typeVoie" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[streetNameBase].valueString -> "libelleVoie" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[lieuDit].valueString -> "lieuDit" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* address.line.extension[postBox].valueString -> "mentionDistribution" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* extension[ror-organization-creation-date] -> "dateCreation"

* extension[organization-period].valuePeriod.end -> "dateFermeture"

Mapping:  ConceptMetier_ROROrganization_EG
Source:   ROROrganization
Id:       specmetier-to-ROROrganization-eg
Title:    "EntiteGeographique du Modèle exposition ROR V3"
* -> "EntiteGeographique"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* identifier[idNatSt] -> "idNatstruct" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[finess] -> "numFINESS" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[sirene] -> "numSIREN" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[numSIRET] -> "numSIRET" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[rppsRang] -> "numEG_RPPS_ADELI_Rang" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* identifier[adeliRang] -> "numEG_RPPS_ADELI_Rang"

* alias -> "nomOpérationnel"
* name -> "denominationEG"
* name.extension[ror-organization-additional-name] -> "complementDenominationEG"

* type[categorieEtablissement] -> "categorieEG" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* type[sphParticipation] -> "modaliteParticipationSPH" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* contact -> "contact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.name -> "nom" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.purpose -> "natureContact" "Profil 1,
Profil 2 si niveau de confidentialité du contact = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité  du contact = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité  du contact = public ou restreint
Profil 0 si niveau de confidentialité  du contact= public"
* contact.telecom -> "telecommunication" "Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"
* contact.telecom.value -> "adresseTelecom" "Profil 1,
Profil 2 si niveau de confidentialité du telecom = public ou restreint,
Profil 3 si champ d'activité MCO, PSY, SSR ou AMBULATOIRE et si niveau de confidentialité du telecom = public 
Profil 3 si champ d'activité MS et si niveau de confidentialité du telecom = public ou restreint
Profil 0 si niveau de confidentialité du telecom = public"

* extension[ror-organization-financial-help-type] -> "aideFinanciere" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[ror-organization-accomodation-family] -> "hebergementFamille" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[ror-organization-nb-permanent-social-help-place] -> "nbPlaceAideSocialPermanent" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[ror-organization-nb-temporary-social-help-place] -> "nbPlaceAideSocialTemporaire" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[ror-organization-accessibility-location] -> "accessibiliteLieu" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* extension[ror-organization-level-recourse-orsan] -> "niveauRecoursORSAN" "Profil 1"
* extension[ror-organization-drop-zone] -> "zonePoser" "Profil 1"
* extension[ror-organization-comment] -> "commentaire"

* extension[organization-period].valuePeriod.start -> "dateOuverture"
* extension[organization-period].valuePeriod.end -> "dateFermeture"

* extension[ror-territorial-division] -> "territoireSante" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

Mapping:  ConceptMetier_ROROrganization_OI
Source:   ROROrganization
Id:       specmetier-to-ROROrganization-oi
Title:    "OrganisationInterne du Modèle exposition ROR V3"
* -> "OrganisationInterne"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* identifier[identifierOI] -> "identifiantOI" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* name -> "nomOI"

* type[OIType] -> "typeOI" "Profil 1,
Profil 2,
Profil 3,
Profil 0"

* telecom -> "boiteLettreMSS"
* telecom.value -> "adresseTelecom"

* extension[ror-organization-reopening-date] -> "datePrevisionnelleReouverture"

* extension[organization-period].valuePeriod.end -> "dateOuverture"
* extension[organization-period].valuePeriod.end -> "dateFermeture"
