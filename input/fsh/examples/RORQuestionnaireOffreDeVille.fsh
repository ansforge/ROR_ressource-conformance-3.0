Instance: ror-questionnaire-offre-de-ville
InstanceOf: RORQuestionnaire
Usage: #example
Description: "Exemple 'fake' pour RORQuestionnaire n'ayant pas forcément de cohérence fonctionnelle."

* meta.profile = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-questionnaire"
* version = "0.1"
* name = "FDS109"
* title = "Consignes fiche de saisie Cabinet de ville de médecine générale"
* identifier.use = #official
* identifier.value = "FDS-109"
* status = #draft
* experimental = true
* date = "2023-12-05"
* publisher = "ANS"
* description = "Exemple 'fake' pour RORQuestionnaire n'ayant pas forcément de cohérence fonctionnelle. \n Dans le ROR, les cabinets de ville et les centres de santé prennent la forme d'une Entité Juridique, et d’un Établissement Géographique (EG), puis d’une unité élémentaire par professionnel. Ce document propose la description type d’un cabinet de ville de médecine générale.\n Vous pouvez télécharger le json [ici](Questionnaire-ror-questionnaire-offre-de-ville.json) et l'importer dans [https://lhcformbuilder.nlm.nih.gov/](https://lhcformbuilder.nlm.nih.gov/) pour le tester et le faire évoluer via cet IHM."
* jurisdiction = urn:iso:std:iso:3166#FR "FRANCE"
* subjectType[0] = #HealthcareService
* subjectType[+] = #Organization
* subjectType[+] = #Practitioner
* subjectType[+] = #Location
* subjectType[+] = #PractitionerRole
* lastReviewDate = "2023-12-05"
* purpose = "Dans le ROR, l'offre de soins de ville comprend celle des cabinets et celle des centres de santé. Concernant les soins de médecine générale, le ROR référencera l’offre des médecins généralistes, qu’ils aient ou non une spécialité, dans leur cabinet, individuel ou de groupe, et les centres de santé."

* useContext[catEG][+].code = $TRE-R67-TypeStructure-EJ-EG#EG
* useContext[catEG][=].valueCodeableConcept = $TRE-R02-SecteurActivite#SA05
* useContext[catEG][+].code = $TRE-R67-TypeStructure-EJ-EG#EG
* useContext[catEG][=].valueCodeableConcept = $TRE-R02-SecteurActivite#SA07
* useContext[catEG][+].code = $TRE-R67-TypeStructure-EJ-EG#EG
* useContext[catEG][=].valueCodeableConcept = $TRE-R02-SecteurActivite#SA08
* useContext[catPS][+].code = $TRE-R288-TypeProfession#P01
* useContext[catPS][=].valueCodeableConcept = $TRE-G15-ProfessionSante#10
* useContext[catSpeOrdinal][+].code = $TRE-R04-TypeSavoirFaire#S
* useContext[catSpeOrdinal][=].valueCodeableConcept = $TRE-R38-SpecialiteOrdinale#SM54
* useContext[catChampAct][+].code = usage-context-ror-codesystem#champAct
* useContext[catChampAct][=].valueCodeableConcept = $TRE_R227-ChampActivite#05

* item[0].linkId = "TypeOffreInfoEJ"
* item[=].prefix = "1"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EJ"
* item[=].type = #group
/*Partie Entité Juridique*/
* item[=].item[0].linkId = "idNatstruct-EJ"
* item[=].item[=].prefix = "1.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Juridiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numFINESS-EJ"
* item[=].item[=].prefix = "1.2"
* item[=].item[=].text = "Numéro FINESS de l'EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numSIREN-EJ"
* item[=].item[=].prefix = "1.3"
* item[=].item[=].text = "Numéro SIRET de l'EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:sirene.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numEJ_RPPS_ADELI_Rang"
* item[=].item[=].prefix = "1.4"
* item[=].item[=].text = "Numéro EJ/RPPS/ADELIrang"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "raisonSociale-EJ"
* item[=].item[=].prefix = "1.5"
* item[=].item[=].text = "Raison sociale EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "complementRaisonSociale-EJ"
* item[=].item[=].prefix = "1.6"
* item[=].item[=].text = "Complément Raison sociale (EJ)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name.extension:ror-organization-additional-name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "statutJuridique-EJ"
* item[=].item[=].prefix = "1.7"
* item[=].item[=].text = "Statut juridique (EJ)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:statutJuridiqueINSEE"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J199-StatutJuridique-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "sousEnsembleAgregatStatutJuridique"
* item[=].item[=].prefix = "1.8"
* item[=].item[=].text = "Ss Ens Agrégat Stat. Jur."
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sousEnsembleAgregatStatutJuridique"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J200-SousEnsembleAgregatStatutJuridique-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "adresseEJ"
* item[=].item[=].prefix = "1.9"
* item[=].item[=].text = "Adresse de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateCreation-EJ"
* item[=].item[=].prefix = "1.10"
* item[=].item[=].text = "Veuillez indiquer la date de création de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-creation-date"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateFermeture-EJ"
* item[=].item[=].prefix = "1.11"
* item[=].item[=].text = "Veuillez indiquer la date de fermeture de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "typeFermeture-EJ"
* item[=].item[=].prefix = "1.12"
* item[=].item[=].text = "Veuillez indiquer le type de fermeture de l’EJ"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J201-TypeFermeture-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
/*Partie Entité Géographique*/
* item[+].linkId = "TypeOffreInfoEG"
* item[=].prefix = "2"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Information sur l'EG"
* item[=].type = #group
* item[=].item[0].linkId = "idNatstruct-EG"
* item[=].item[=].prefix = "2.1"
* item[=].item[=].text = "IdNat_Struct (Identification nationale des Entités Géographiques définie dans le CI-SIS)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:idNatSt.value"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numFINESS-EG"
* item[=].item[=].prefix = "2.2"
* item[=].item[=].text = "Numéro FINESS de l'EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:finess.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numSIRET"
* item[=].item[=].prefix = "2.3"
* item[=].item[=].text = "Numéro SIRET de l'EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:numSIRET.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "numEG_RPPS_ADELI_Rang"
* item[=].item[=].prefix = "2.4"
* item[=].item[=].text = "N°EG/RPPS/ADELIrang"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.identifier:rppsRang.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "nom-EG"
* item[=].item[=].prefix = "2.5"
* item[=].item[=].text = "Dénomination EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "complementRaisonSociale-EG"
* item[=].item[=].prefix = "2.6"
* item[=].item[=].text = "Complément Dénomination"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.name"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "cNomOperationnel-EG"
* item[=].item[=].prefix = "2.7"
* item[=].item[=].text = "Le cas échéant, veuillez renseigner le nom opérationnel de l’entité géographique"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.alias"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "categorieEG"
* item[=].item[=].prefix = "2.8"
* item[=].item[=].text = "Catégorie EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:categorieEtablissement"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J55-CategorieEG-ROR
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "adresseEG"
* item[=].item[=].prefix = "2.9"
* item[=].item[=].text = "Lieu EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.address.text"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "contactEG"
* item[=].item[=].prefix = "2.10"
* item[=].item[=].text = "Contact (Informations permettant de contacter l'accueil ou le secrétariat de l'entité géographique)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.contact.telecom.value"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "accessibiliteLieu-EG"
* item[=].item[=].prefix = "2.11"
* item[=].item[=].text = "Accessibilité lieu"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-accessibility-location"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J50-AccessibiliteLieu-ROR
* item[=].item[=].required = false
* item[=].item[=].prefix = "2.12"
* item[=].item[=].text = "modaliteParticipationSPH"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.type:sphParticipation"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J202-ESPIC-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateOuverture-EG"
* item[=].item[=].prefix = "2.13"
* item[=].item[=].text = "Veuillez indiquer la date de création de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.start"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "dateFermeture-EG"
* item[=].item[=].prefix = "2.14"
* item[=].item[=].text = "Veuillez indiquer la date de fermeture de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:organization-period.end"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "typeFermeture-EG"
* item[=].item[=].prefix = "2.15"
* item[=].item[=].text = "Veuillez indiquer le type de fermeture de l’EG"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-organization#Organization.extension:ror-organization-closing-type"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J201-TypeFermeture-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true

/*Type d'offre*/
* item[+].linkId = "TypeOffreInfo"
* item[=].prefix = "3"
* item[=].text = "Valeurs de description spécifiques d’un cabinet de ville de médecine générale. Informations sur l'offre"
* item[=].type = #group
* item[=].item[0].linkId = "IdentifiantOffre"
* item[=].item[=].text = "Identifiant Offre (Fourni par le ROR)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.identifier.value"
* item[=].item[=].prefix = "3.1"
* item[=].item[=].type = #string
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "NomOffre"
* item[=].item[=].text = "Nom Offre"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.name"
* item[=].item[=].prefix = "3.2"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "modePriseEnCharge"
* item[=].item[=].text = "Mode de prise en charge"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:careMode.coding"
* item[=].item[=].prefix = "3.3"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[=].answerOption[0].valueCoding = $TRE-R213-ModePriseEnCharge#32 "Consultation (CS)"
* item[=].item[=].answerOption[0].initialSelected = true
* item[=].item[+].linkId = "ModalAccueil"
* item[=].item[=].text = "Modalité d’accueil"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:receptionModality.coding"
* item[=].item[=].prefix = "3.4"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $TRE-R338-ModaliteAccueil#03 "Consultation en présentiel"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R338-ModaliteAccueil#04 "Téléconsultation"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R338-ModaliteAccueil#05 "Visite à domicile"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "ageMin"
* item[=].item[=].text = "Veuillez indiquer l’âge minimum de la patientèle."
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].low"
* item[=].item[=].prefix = "3.5"
* item[=].item[=].type = #quantity
* item[=].item[=].required = false
* item[=].item[+].linkId = "ageMax"
* item[=].item[=].text = "Veuillez indiquer l’âge maximum de la patientèle"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type#key_Extension.extension:ageRange.value[x].high"
* item[=].item[=].prefix = "3.6"
* item[=].item[=].type = #quantity
* item[=].item[=].required = false
* item[=].item[+].linkId = "ZoneInter"
* item[=].item[=].text = "Zone d’intervention (A renseigner si la modalité d’accueil « visite à domicile » est renseignée)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-territorial-division#Extension.extension:codeTerritorialDivision"
* item[=].item[=].prefix = "3.7"
* item[=].item[=].type = #choice
* item[=].item[=].enableWhen.question = "ModalAccueil"
* item[=].item[=].enableWhen.operator = #= 
* item[=].item[=].enableWhen.answerCoding = $TRE-R338-ModaliteAccueil#05 "Visite à domicile"
* item[=].item[=].enableBehavior = #all
* item[=].item[=].answerValueSet = "https://interop.esante.gouv.fr/ig/fhir/ror/ValueSet/code-region-territorial-division-ror-valueset"
* item[=].item[=].required = false
* item[=].item[+].linkId = "activiteOperationnelle"
* item[=].item[=].text = "Activités opérationnelles"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.specialty:operationalActivity"
* item[=].item[=].prefix = "3.8"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $TRE-R211-ActiviteOperationnelle#404 "Addictologie avec substance(s)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#001 "Addictologie comportementale (sans substance)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#004 "Algologie et Médecine de la douleur"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#040 "Diététique et Nutrition"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#435 "Expertise médicale (évaluation de préjudice)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#179 "Médecine aéronautique et aérospatiale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#480 "Médecine du sommeil"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#081 "Médecine du sport"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#437 "Médecine générale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#481 "Médecine générale à orientation Allergologie"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#482 "Médecine générale à orientation Andrologie"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#483 "Médecine générale à orientation Diabétologie"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#484 "Médecine générale à orientation Gériatrie, Gérontologie"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#485 "Médecine générale à orientation Gynécologie médicale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#486 "Médecine générale à orientation Maladies infectieuses, parasitaires et tropicales"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#487 "Médecine générale à orientation Médecine pédiatrique"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#488 "Médecine générale à orientation Médecine vasculaire (Angiologie, Phlébologie)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#489 "Médecine générale à orientation Oncogériatrie (cancérologie)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#490 "Médecine générale à orientation Pathologies osseuses médicales"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#084 "Médecine hyperbare"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#455 "Médecine thermale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#135 "Sexologie médicale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#170 "Soins palliatifs"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R211-ActiviteOperationnelle#139 "Tabacologie"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "acteSpecifique"
* item[=].item[=].text = "Actes Specifiques"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificAct"
* item[=].item[=].prefix = "3.9"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $TRE-R210-ActeSpecifique#0739 "Audiogramme"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1167 "Contention souple d'articulation"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1171 "Dépistage de la déficience visuelle de l'enfant"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1172 "Dépistage des surdités de l'enfant"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1181 "Diagnostic par dermatoscope"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1182 "Diagnostic par echoscope doppler"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0172 "ECG (électrocardiographie)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1186 "Echographie clinique ciblée"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0628 "Education thérapeutique du patient non labellisée ou psychoéducation"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1197 "Évacuation / Excision d'une thrombose hémorroïdaire externe"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0483 "Evaluation des troubles du sommeil (polysomnographie)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1199 "Examen médical d'aptitude à la fonction publique par médecin agréé"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1200 "Examen médical du permis de conduire par médecin agréé"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1208 "Frottis du col utérin"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1215 "Incision / excision d'un panaris superficiel"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0268 "Interruption volontaire de grossesse (IVG) médicamenteuse"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0812 "Médiation Familiale"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1244 "Pose d'implants contraceptifs"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1245 "Pose de DIU"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1247 "Pose de plâtres ou résines, orthèse"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1248 "Prescription initiale d'audioprothèses"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1249 "Prise en charge des migraines et céphalées"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0825 "Prophylaxie pré-exposition par voie orale (PrEP)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0768 "Psychothérapie"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0921 "Repérage des conduites addictives, soins et orientation"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0441 "Soins avec administration de MEOPA"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1269 "Sutures cutanées"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0448 "Synoviorthèse isotopique"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#1270 "Tamponnement nasal antérieur"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0626 "Bilan neuro-psychologique"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0610 "Thérapie individuelle cognitivo-comportementale (TCC)"
* item[=].item[=].answerOption[+].valueCoding = $TRE-R210-ActeSpecifique#0608 "Thérapie individuelle par hypnose"
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "acteRealiseHorsCabinet"
* item[=].item[=].text = "Acte spécifique hors cabinet"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:outsideOfficeAct"
* item[=].item[=].prefix = "3.10"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $TRE-R210-ActeSpecifique#0528 "Education thérapeutique du patient (ETP) labellisée"
* item[=].item[+].linkId = "CompetenceSpecifique"
* item[=].item[=].text = "Compétence(s) spécifique(s)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:specificCompetence"
* item[=].item[=].prefix = "3.11"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = $JDV-J33-CompetenceSpecifique-ROR
* item[=].item[+].linkId = "niveauExpertise"
* item[=].item[=].text = "Niveau d’expertise"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:expertiseLevel"
* item[=].item[=].prefix = "3.12"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = $JDV-J227-NiveauExpertise-ROR
* item[=].item[+].linkId = "typeFermeture"
* item[=].item[=].text = "Type de fermeture"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.characteristic:temporalityStopService"
* item[=].item[=].prefix = "3.13"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerValueSet = $JDV-J185-TypeFermeture-ROR
* item[=].item[+].linkId = "dateFermeture"
* item[=].item[=].text = "Date de fermeture"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.start"
* item[=].item[=].prefix = "3.14"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "DatePrevisionnelleReouverture"
* item[=].item[=].text = "Date prévisionnelle réouverture"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.notAvailable:closingRepoeningDate.during.end"
* item[=].item[=].prefix = "3.15"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "Horaires"
* item[=].item[=].prefix = "3.16"
* item[=].item[=].text = "Horaires"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].linkId = "typePlageHoraire"
* item[=].item[=].item[=].text = "Type de plage horaire"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.extension:ror-available-time-type-of-time"
* item[=].item[=].item[=].prefix = "3.16.1"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = $JDV-J41-TypeHoraire-ROR
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "jourSemaine"
* item[=].item[=].item[=].text = "Jour de la semaine"
* item[=].item[=].item[=].prefix = "3.16.2"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[0].linkId = "numJour"
* item[=].item[=].item[=].item[=].text = "Numéro du jour dans la semaine"
* item[=].item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-available-time-number-days-of-week"
* item[=].item[=].item[=].item[=].prefix = "3.16.2a"
* item[=].item[=].item[=].item[=].type = #integer
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "heures"
* item[=].item[=].item[=].item[=].text = "Heures"
* item[=].item[=].item[=].item[=].prefix = "3.16.2b"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[0].linkId = "availableStartTime"
* item[=].item[=].item[=].item[=].item[=].text = "Début de la plage horaire"
* item[=].item[=].item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableStartTime"
* item[=].item[=].item[=].item[=].item[=].prefix = "-"
* item[=].item[=].item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].item[+].linkId = "availableEndTime"
* item[=].item[=].item[=].item[=].item[=].text = "Fin de la plage horaire"
* item[=].item[=].item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.availableTime.availableEndTime"
* item[=].item[=].item[=].item[=].item[=].prefix = "-"
* item[=].item[=].item[=].item[=].item[=].type = #time
* item[=].item[=].item[=].item[=].item[=].required = false
* item[=].item[+].linkId = "Contact"
* item[=].item[=].prefix = "3.17"
* item[=].item[=].text = "Contact"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "nature"
* item[=].item[=].item[=].text = "Nature"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact#Extension.extension:purposeContact"
* item[=].item[=].item[=].prefix = "a"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding = $TRE-R287-NatureContact#01 "Accueil"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R287-NatureContact#02 "Prise de rendez-vous"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R287-NatureContact#09 "Téléconsultation"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R287-NatureContact#15 "Téléexpertise"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "description"
* item[=].item[=].item[=].text = "Description"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact#Extension.extension:description.value[x]"
* item[=].item[=].item[=].prefix = "b"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "niveau-confidentialite"
* item[=].item[=].item[=].text = "Niveau de Confidentialité"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level"
* item[=].item[=].item[=].prefix = "c"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R283-NiveauConfidentialite#2 "Accès restreint"
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "telecommunication"
* item[=].item[=].prefix = "3.18"
* item[=].item[=].text = "Télécom du contact"
* item[=].item[=].type = #group
* item[=].item[=].required = false
* item[=].item[=].item[0].linkId = "canal"
* item[=].item[=].item[=].text = "Canal"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel"
* item[=].item[=].item[=].prefix = "a"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding = $TRE-R200-CanalCommunication#1 "Téléphone mobile"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R200-CanalCommunication#2 "Téléphone fixe"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R200-CanalCommunication#3 "Courrier électronique"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R200-CanalCommunication#4 "Adresse web"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "telecomAddress"
* item[=].item[=].item[=].text = "Adresse"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact-telecom#Extension.extension:telecomAddress.value[x]"
* item[=].item[=].item[=].prefix = "b"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "telecomUsage"
* item[=].item[=].item[=].text = "Usage"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-usage#Extension.value[x]"
* item[=].item[=].item[=].prefix = "c"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[+].linkId = "telecom-niveau-confidentialite"
* item[=].item[=].item[=].text = "Niveau de Confidentialité"
* item[=].item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level"
* item[=].item[=].item[=].prefix = "d"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding = $TRE-R283-NiveauConfidentialite#1 "Accès libre"
* item[=].item[=].item[=].answerOption[+].valueCoding = $TRE-R283-NiveauConfidentialite#2 "Accès restreint"
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "boiteLettreMSS"
* item[=].item[=].text = "Boîte aux lettres MSS"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice#HealthcareService.telecom.value"
* item[=].item[=].prefix = "3.19"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "modeExercice"
* item[=].item[=].text = "Mode d’exercice dans l’UE"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole-unit-exercise-mode#Extension.value[x]"
* item[=].item[=].prefix = "3.20"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J217-ModeExercice-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "secteurConventionnement"
* item[=].item[=].text = "Secteur conventionnement"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:contracted.value[x]"
* item[=].item[=].prefix = "3.21"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J130-CNAMAmeliSecteurConventionnement-RASS
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "optionContratAccèsAuxSoins"
* item[=].item[=].text = "Option CAS (Contrat d’Accès aux Soins) / OPTAM (Option Pratique Tarifaire Maîtrisée)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.extension:optionCAS"
* item[=].item[=].prefix = "3.22"
* item[=].item[=].type = #boolean
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "carteVitaleAcceptee"
* item[=].item[=].text = "Carte vitale acceptée"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole-vitaleAccepted"
* item[=].item[=].prefix = "3.23"
* item[=].item[=].type = #boolean
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "civiliteExercice"
* item[=].item[=].text = "Civilité d’exercice"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseTitle.value[x]:valueCodeableConcept"
* item[=].item[=].prefix = "3.24"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J208-CiviliteExercice-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "nomExercice"
* item[=].item[=].text = "Nom d’exercice"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseLastName"
* item[=].item[=].prefix = "3.25"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "prenomExercice"
* item[=].item[=].text = "Prénom d’exercice"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/RORPractitionerRoleName#Extension.extension:exerciseFirstName"
* item[=].item[=].prefix = "3.26"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "profession"
* item[=].item[=].text = "Profession"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.code"
* item[=].item[=].prefix = "3.27"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J229-ProfessionSante-ROR
* item[=].item[=].required = true
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "typeSavoirFaire"
* item[=].item[=].text = "Type savoir faire"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseType"
* item[=].item[=].prefix = "3.28"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J209-TypeSavoirFaire-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "specialite"
* item[=].item[=].text = "Spécialité"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specialty"
* item[=].item[=].prefix = "3.30"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J210-SpecialiteOrdinale-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "competence"
* item[=].item[=].text = "Compétence"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:competence"
* item[=].item[=].prefix = "3.31"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J232-Competence-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "competenceExclusive"
* item[=].item[=].text = "Compétence Exclusive"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:exclusiveCompetence"
* item[=].item[=].prefix = "3.32"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J211-CompetenceExclusive-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "orientationParticuliere"
* item[=].item[=].text = "Orientation particulière"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:specificOrientation"
* item[=].item[=].prefix = "3.33"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J212-OrientationParticuliere-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "capacite"
* item[=].item[=].text = "Capacité"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:expertiseCapacity"
* item[=].item[=].prefix = "3.34"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J213-CapaciteSavoirFaire-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "qualificationPAC"
* item[=].item[=].text = "Qualification de Praticien Adjoint Contractuel"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:qualificationPAC"
* item[=].item[=].prefix = "3.35"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J214-QualificationPAC-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "DESCNonQualifiant"
* item[=].item[=].text = "DESC Non Qualifiant"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:nonQualifyingDESC"
* item[=].item[=].prefix = "3.36"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J215-DESCnonQualifiant-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "droitExerciceComplémentaire"
* item[=].item[=].text = "Droit Exercice Complémentaire"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitionerrole#PractitionerRole.specialty:supplementaryExerciseRight"
* item[=].item[=].prefix = "3.37"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J216-DroitExerciceCompl-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "idNat_PS"
* item[=].item[=].text = "Identification Nationale du PS"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.identifier.value"
* item[=].item[=].prefix = "3.38"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "boiteLettreMSS-PS"
* item[=].item[=].text = "Boîte aux lettres du service de messagerie sécurisée de santé"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.telecom.value"
* item[=].item[=].prefix = "3.39"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "Civilite"
* item[=].item[=].text = "Civilité du PS"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-practitioner#Practitioner.name.prefix"
* item[=].item[=].prefix = "3.40"
* item[=].item[=].type = #string
* item[=].item[=].answerValueSet = $JDV-J207-Civilite-ROR
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "identifiantLieu"
* item[=].item[=].text = "Identifiant lieu real offre"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.identifier:idLocation.value"
* item[=].item[=].prefix = "3.41"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "adresseLieu"
* item[=].item[=].text = "Adresse"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location#Location.address.text"
* item[=].item[=].prefix = "3.42"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "communeCog"
* item[=].item[=].text = "communeCog"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
* item[=].item[=].prefix = "3.43"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J124-Commune
* item[=].item[=].required = false
* item[=].item[+].linkId = "descriptionLieu"
* item[=].item[=].text = "Description (Le cas échéant, veuillez préciser comment atteindre le lieu)"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-commune-cog"
* item[=].item[=].prefix = "3.44"
* item[=].item[=].type = #string
* item[=].item[=].required = false

/*Type d'équipement*/
* item[+].linkId = "TypeEquipementInfo"
* item[=].prefix = "4"
* item[=].text = "Equipement(s) disponible(s)"
* item[=].type = #group
* item[=].repeats = true
* item[=].item[0].linkId = "equipmentType"
* item[=].item[=].text = "Type équipement"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:equipmentType.value[x]"
* item[=].item[=].prefix = "4.a"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J18-EquipementSpecifique-ROR
* item[=].item[+].linkId = "nbInService"
* item[=].item[=].text = "Nombre équipement en service"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment#Extension.extension:nbInService.value[x]"
* item[=].item[=].prefix = "4.b"
* item[=].item[=].type = #integer
* item[=].item[+].linkId = "equipmentFeature"
* item[=].item[=].text = "Type caractéristique de l'équipement"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:equipmentFeature.value[x]"
* item[=].item[=].prefix = "4.c"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = $JDV-J228-TypeCaracteristiqueEquipement-ROR
* item[=].item[+].linkId = "limitValue"
* item[=].item[=].text = "Valeur limite"
* item[=].item[=].definition = "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-location-equipment-limit#Extension.extension:limitValue.value[x]"
* item[=].item[=].prefix = "4.d"
* item[=].item[=].type = #quantity