Profile: RORHealthcareService
Parent: fr-core-healthcare-service
Id: ror-healthcareservice
Description: "Profil créé dans le cadre du ROR pour décrire les prestations que peut réaliser une structure et qui permettent de répondre au besoin de santé d'une personne"

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
* identifier 1..1 MS
* identifier ^short = "identifiantOffre (OffreOperationnelle) : Identifiant de l'offre, unique et persistant au niveau national"
* name ^short = "nomOffre (OffreOpérationnelle) : Dénomination sous laquelle l'offre est identifiée par le porteur d'offre"
* name MS
* providedBy MS
* providedBy only Reference(as-organization or ROROrganization)
* location MS
* category 0..1 MS
* category ^short = "typeOffre (OffreOperationnelle) : Permet de distinguer les offres et de les classer en fonction de leur nature particulière"
* category from $JDV-J238-TypeOffre-ROR (required)
* type 1..1 MS
* type ^short = "champActivite (OffreOperationnelle) : Domaine dans lequel s'inscrit l'offre"
* type from $JDV-J20-ChampActivite-ROR (required)
* comment ^short = "commentaire (Metadonnee) : Commentaire qui peut être associé à chaque objet"
* location only Reference(fr-core-location or RORLocation)

* availableTime MS
* availableTime ^short = "horaire (OffreOperationnelle) : heureDebut + heureFin"
* availableTime.daysOfWeek 0..1
* availableTime.daysOfWeek ^short = "Remarque : L'utilisation de l'extension ror-available-time-number-days-of-week est privilégiée."
* availableTime.availableStartTime MS
* availableTime.availableStartTime ^short = "heureDebut (Horaire) : Heure de début de la plage horaire"
* availableTime.availableEndTime MS
* availableTime.availableEndTime ^short = "heureFin (Horaire) : Heure de fin de la plage horaire"
* availableTime.extension ^slicing.discriminator.type = #value
* availableTime.extension ^slicing.discriminator.path = "url"
* availableTime.extension ^slicing.rules = #open
* availableTime.extension contains
    RORAvailableTimeTypeOfTime named ror-available-time-type-of-time 0..1 MS and 
    RORAvailableTimeEffectiveOpeningClosingDate named ror-available-time-effective-opening-closing-date 0..1  MS and
    RORAvailableTimeNumberDaysofWeek named ror-available-time-number-days-of-week 0..1 MS
* availableTime.extension[ror-available-time-type-of-time] ^short = "typePlageHoraire (Horaire) : apporte un contexte à la plage horaire définie par la suite"
* availableTime.extension[ror-available-time-effective-opening-closing-date] ^short = "debutDateEffective + finDateEffective (Horaire)"
* availableTime.extension[ror-available-time-number-days-of-week] ^short = "jourSemaine (Horaire) : Numéro du jour dans la semaine - Remarque : L'utilisation de cette extension est privilégiée à celle de l'élément natif daysOfWeek."

* telecom.value 1..1 MS
* telecom ^short = "boiteLettreMSS (OffreOperationnelle) : Boîte(s) aux lettres du service de messagerie sécurisée de santé (MSS) rattachée(s) à l’offre opérationnelle"
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

* coverageArea only Reference(fr-core-location or RORLocation)
* characteristic 1..* MS

* characteristic.extension ^slicing.discriminator.type = #value
* characteristic.extension ^slicing.discriminator.path = "url"
* characteristic.extension ^slicing.rules = #open
* characteristic.extension contains
    RORActType named ror-act-type 0..1 MS
* characteristic.extension[ror-act-type] ^short = "Type d'acte"
* characteristic ^slicing.discriminator[0].type = #value
* characteristic ^slicing.discriminator[=].path = "coding.system"
* characteristic ^slicing.discriminator[+].type = #value
* characteristic ^slicing.discriminator[=].path = "extension(https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-act-type)"
* characteristic ^slicing.rules = #open
* characteristic contains
    receptionType 0..1 MS and
    careMode 1..1 MS and
    receptionModality 0..* MS and
    managementType 0..* MS and
    specificAct 0..* MS and
    outsideOfficeAct 0..* MS and
    takingCareSpeciality 0..* MS and
    annualOpening 0..1 MS and
    ressourceProfession 0..* MS and
    specificCompetence 0..* MS and
    expertiseLevel 0..* MS and
    temporalityStopService 0..1 MS

* characteristic[receptionType] ^short = "temporaliteAccueil (OffreOperationnelle) : Précision sur le mode de prise en charge"
* characteristic[receptionType] from $JDV-J30-TemporaliteAccueil-ROR (required)
* characteristic[receptionType].extension[ror-act-type] 0..0

* characteristic[careMode] ^short = "modePriseEnCharge (OffreOperationnelle) : Caractérise l'hébergement ainsi que le niveau de technicité et d'intensité des soins"
* characteristic[careMode] from $JDV-J19-ModePriseEnCharge-ROR (required)
* characteristic[careMode].extension[ror-act-type] 0..0

* characteristic[receptionModality] ^short = "modaliteAccueil (OffreOperationnelle) : Permet de préciser le mode de prise en charge géographiquement"
* characteristic[receptionModality] from $JDV-J226-ModaliteAccueil-ROR (required)
* characteristic[receptionModality].extension[ror-act-type] 0..0

* characteristic[managementType] ^short = "modeGestion (OffreOperationnelle) : Mode d’intervention des aides à domicile en fonction de la nature de la relation contractuelle"
* characteristic[managementType] from $JDV-J26-ModeGestion-ROR (required)
* characteristic[managementType].extension[ror-act-type] 0..0

* characteristic[takingCareSpeciality] ^short = "specialisationPriseEnCharge (OffreOperationnelle) : Regroupement de troubles, de pathologies ou de déficiences qui nécessitent la mobilisation d'expertises, de compétences et/ou d'équipements spécifiques"
* characteristic[takingCareSpeciality] from $JDV-J35-SpecialisationDePriseEnCharge-ROR (required)
* characteristic[takingCareSpeciality].extension[ror-act-type] 0..0

* characteristic[annualOpening] ^short = "ouvertureAnnuelle (OffreOperationnelle) : Nombre de jours maximum dans l’année au cours desquels la prestation peut être proposée par l'établissement"
* characteristic[annualOpening] from $JDV-J28-OuvertureAnnuelle-ROR (required)
* characteristic[annualOpening].extension[ror-act-type] 0..0

* characteristic[ressourceProfession] ^short = "professionRessource (OffreOperationnelle) : Traduit la mobilisation de métiers qui constituent un facteur différenciant dans la réalisation de la prestation"
* characteristic[ressourceProfession] from $JDV-J186-ProfessionRessource-ROR (required)
* characteristic[ressourceProfession].extension[ror-act-type] 0..0

* characteristic[specificCompetence] ^short = "competenceSpecifique (OffreOperationnelle) : Capacité ou connaissance reconnue qui permet ou facilite l’accueil d’une personne"
* characteristic[specificCompetence] from $JDV-J33-CompetenceSpecifique-ROR (required)
* characteristic[specificCompetence].extension[ror-act-type] 0..0

* characteristic[expertiseLevel] ^short = "niveauExpertise (OffreOperationnelle) : Niveau de ressources humaines et matérielles engagées dans la réalisation de l'offre"
* characteristic[expertiseLevel] from $JDV-J227-NiveauExpertise-ROR (required)
* characteristic[expertiseLevel].extension[ror-act-type] 0..0

* characteristic[temporalityStopService] ^short = "typeFermeture (OffreOperationnelle) : Temporalité d'arrêt de réalisation de la prestation"
* characteristic[temporalityStopService] from $JDV-J185-TypeFermeture-ROR (required)
* characteristic[temporalityStopService].extension[ror-act-type] 0..0

* characteristic[specificAct] ^short = "acteSpecifique (OffreOperationnelle) : Action menée par un ou plusieurs acteur(s) de santé dans le cadre d’une activité"
* characteristic[specificAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[specificAct].extension[ror-act-type] 1..1 MS
* characteristic[specificAct].extension[ror-act-type].valueCode = #specificAct

* characteristic[outsideOfficeAct] ^short = "acteRealiseHorsCabinet (OffreOperationnelle) : Permet de décrire l’offre de santé des médecins libéraux réalisée en dehors du cabinet, au sein d’un établissement"
* characteristic[outsideOfficeAct] from $JDV-J16-ActeSpecifique-ROR (required)
* characteristic[outsideOfficeAct].extension[ror-act-type] 1..1 MS
* characteristic[outsideOfficeAct].extension[ror-act-type].valueCode = #outsideOfficeAct


* specialty 1..* MS
* specialty ^slicing.discriminator.type = #value 
* specialty ^slicing.discriminator.path = "coding.system" 
* specialty ^slicing.rules = #open
* specialty contains
    operationalActivity 1..1 MS and
    operationalActivityFamily 0..1 MS
* specialty[operationalActivity] ^short = "activiteOperationnelle (ActiviteOperationnelle) : ensemble cohérent d’actions et de pratiques mises en œuvre pour répondre aux besoins en Santé de la personne"
* specialty[operationalActivity] from $JDV-J17-ActiviteOperationnelle-ROR
* specialty[operationalActivityFamily] ^short = "familleActiviteOperationnelle (ActiviteOperationnelle) : regroupement cohérent d’activités délivrées dans le cadre d'une prestation, répondant à un besoin de la personne"
* specialty[operationalActivityFamily] from $JDV-J51-FamilleActiviteOperationnelle-ROR

* notAvailable MS
* notAvailable ^slicing.discriminator.type = #value 
* notAvailable ^slicing.discriminator.path = "id" 
* notAvailable ^slicing.rules = #open
* notAvailable contains
    closingReopeningDate 0..1 MS
* notAvailable[closingReopeningDate].id = "closingReopeningDate"
* notAvailable[closingReopeningDate] ^short = "Période de fermeture (during.start) et de réouverture prévisionnelle (during.end)."
* notAvailable[closingReopeningDate].during.start ^short = "dateFermeture (OffreOperationnelle) : Date effective à partir de laquelle la prestation n'est plus assurée"
* notAvailable[closingReopeningDate].during.end ^short = "DatePrevisionnelleReouverture (OffreOperationnelle) : date prévisionnelle à partir de laquelle la prestation sera de nouveau assurée"
* notAvailable[closingReopeningDate].description = "Période de fermeture et de réouverture prévisionnelle"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORTerritorialDivision named ror-territorial-division 0..* MS and
    RORHealthcareServiceSensitiveUnit named ror-healthcareservice-sensitive-unit 1..1 MS and
    RORHealthcareServiceNoConsentHabilitation named ror-healthcareservice-no-consent-habilitation 0..1 MS and
    RORHealthcareServicePsychiatricSector named ror-healthcareservice-psychiatric-sector 0..* MS and
    RORHealthcareServicePatientType named ror-healthcareservice-patient-type 1..1 MS and
    RORHealthcareServiceContact named ror-healthcareservice-contact 0..* MS and
    RORMetaCreationDate named ror-meta-creation-date 1..1 MS
* extension[ror-territorial-division] ^short = "zoneIntervention (OffreOperationnelle) : Périmètre géographique dans lequel habitent les personnes pouvant être prises en charge pour la prestation décrite"
* extension[ror-healthcareservice-sensitive-unit] ^short = "uniteSensible (OffreOperationnelle) : Permet de signaler que toutes les informations de description d'une offre sont confidentielles"
* extension[ror-healthcareservice-no-consent-habilitation] ^short = "habilitationAuxSoinsSansConsentement (OffreOperationnelle) : permet d'identifier les offres pour lesquelles un établissement est autorisé à prendre en charge des patients sans leur consentement"
* extension[ror-healthcareservice-psychiatric-sector] ^short = "secteurPsychiatrique (OffreOperationnelle) : aire géographique à laquelle sont rattachées des structures de relais et de soins qui prennent en charge des patients résidants sur ce secteur"
* extension[ror-healthcareservice-patient-type] ^short = "publicPrisEnCharge (Patientele) : Ensemble de personnes qui présentent des caractéristiques psychologiques, intellectuelles, physiques, psycho-motrices, comportementales leur permettant de bénéficier de la prestation décrite"
* extension[ror-healthcareservice-contact] ^short = "contact (OffreOperationnelle) : Personne ou service qui agit comme point de contact auprès d'une autre personne ou d'un autre service"
* extension[ror-meta-creation-date] ^short = "dateCreation (Metadonnee)"

Mapping:  ConceptMetier_RORHealthcareService
Source:   RORHealthcareService
Id:       specmetier-to-RORHealthcareService
Title:    "HealthcareService du Modèle exposition ROR V3"
* -> "OffreOperationnelle"

* providedBy -> "EntiteJuridique"
* providedBy -> "EntiteGeographique"
* providedBy -> "OrganisationInterne"
* location -> "LieuRealisationOffre"

* id -> "metadonnee.identifiant" "Profil 1,
Profil 2,
Profil 3,
Profil 0"
* comment -> "metadonnee.commentaire"
* meta -> "metadonnee"
* meta.lastUpdated -> "dateMiseJour"
* meta.tag[codeRegion] -> "regionSource"

* identifier -> "identifiantOffre" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* name -> "nomOffre" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* category -> "typeOffre" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* type -> "champActivite" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* active -> "Pas d'équivalent"

* characteristic[receptionType] -> "temporaliteAccueil" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[careMode] -> "modePriseEnCharge" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[receptionModality] -> "modaliteAccueil" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[managementType] -> "modeGestion" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[specificAct] -> "acteSpecifique" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* characteristic[outsideOfficeAct] -> "acteRealiseHorsCabinet" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* characteristic[takingCareSpeciality] -> "specialisationPriseEnCharge" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* characteristic[annualOpening] -> "ouvertureAnnuelle" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[ressourceProfession] -> "professionRessource" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* characteristic[specificCompetence] -> "competenceSpecifique" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 si champ d'activité = MS (sauf si uniteSensible = Oui)"
* characteristic[expertiseLevel] -> "niveauExpertise" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* characteristic[temporalityStopService] -> "typeFermeture" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"

* specialty[operationalActivity] -> "ActiviteOperationnelle.activiteOperationnelle" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* specialty[operationalActivityFamily] -> "ActiviteOperationnelle.familleActiviteOperationnelle" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"

* notAvailable[closingReopeningDate].during.start -> "dateFermeture" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* notAvailable[closingReopeningDate].during.end -> "datePrevisionnelleReouverture" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"

* availableTime -> "horaire" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* availableTime.availableStartTime -> "heureDebut" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* availableTime.availableEndTime -> "heureFin" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"

* telecom -> "boiteLettreMSS.adresseMSS" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"
* telecom.value -> "adresseTelecom" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"

* extension[ror-territorial-division] -> "zoneIntervention" "Profil 1,
Profil 2 (sauf si uniteSensible = Oui),
Profil 3 (sauf si uniteSensible = Oui),
Profil 0 (sauf si uniteSensible = Oui)"