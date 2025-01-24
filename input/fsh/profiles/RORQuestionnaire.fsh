Profile: RORQuestionnaire
Parent: Questionnaire
Id: ror-questionnaire
Description: "Fiche de saisie de l'offre de soins"
* ^status = #draft

/* Données fonctionnelles */
* identifier 0..1 MS
* identifier ^short = "Identifiant de la fiche de saisie. Exemple FDS-092"
* version ^short = "version de la fiche de saisie"
* version MS
* status ^short = "Statut de la fiche"
* name 1..1 MS
* name ^short = "Nom utilisé par les systèmes pour référencer la fiche exemple FDS-092"
* title 1..1 MS
* title ^short = "Titre de la fiche. Exemple Unité d'accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d'Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..* MS
* subjectType ^short = "Types de Ressources qui seront alimentées lors de la saisie de cette fiche : HealthcareService, Organization, Practioner, PractionerRole, Location"
* date ^short = "Date du dernier changement"
* date MS
* publisher ^short = "Nom de l'éditeur del a fiche: Etablissement ou personne" 
* publisher MS
* description ^short = "Description de l'objet de la feuille de saisie" 
* description MS
* derivedFrom ^short = "Fiche(s) de saisie parente(s)"
* derivedFrom MS
* purpose MS
* purpose ^short = "Pourquoi cette fiche est-il défini"
* approvalDate 0..1 MS
* approvalDate ^short = "Date de validation de la fiche de saisie"
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "Date de dernière revue de la fiche"
* effectivePeriod ^short = "Periode de validité de la fiche" 
* effectivePeriod MS
* code 0..0 //hors cas d'usage du ROR ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* useContext 1..*
* useContext MS
* useContext ^short = "Contexte d'usage de la fiche de consignes de saisie de spécifier pour quelle(s) Catégorie(s) d'EG elle est applicable ainsi que potentiellemnt la spécialité ordinale, la profession et ou le domaine de l'offre"
* useContext ^slicing.discriminator.type = #pattern
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext ^slicing.description = "Slicing pour définir les différents contextes d'usage de la fiche afin de pouvoir catégoriser ces fiches de consignes par : catégorie d'EG (obligatoire), Spécialité ordinale (optionnel), profession (optionnel) et domaine (optionnel)"
* useContext ^slicing.ordered = false
* useContext contains
    catEG 1..* and
    catPS 0..* and
    catSpeOrdinal 0..* and
    catChampAct 0..*
* useContext.code from ror-usage-context-type-vs (extensible)
* useContext[catEG].code = $TRE-R67-TypeStructure-EJ-EG#EG // fixé 
* useContext[catEG].valueCodeableConcept from $JDV-J55-CategorieEG-ROR (required)
* useContext[catEG].valueCodeableConcept ^short = "Catégorie(s) d'EG pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catEG] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) d'EG elle est applicable"
* useContext[catPS].code = $TRE-R288-TypeProfession#P01 // fixé 
* useContext[catPS].valueCodeableConcept from $JDV-J229-ProfessionSante-ROR (required)
* useContext[catPS].valueCodeableConcept ^short = "Catégorie(s) de profession pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catPS] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) de profession elle est applicable"
* useContext[catSpeOrdinal].code = $TRE-R04-TypeSavoirFaire#S // fixé 
* useContext[catSpeOrdinal].valueCodeableConcept from $JDV-J210-SpecialiteOrdinale-ROR (required)
* useContext[catSpeOrdinal].valueCodeableConcept ^short = "Catégorie(s) de spécialité ordinale pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* useContext[catSpeOrdinal] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier pour quelle(s) Catégorie(s) de spécialité ordinale elle est applicable"
* useContext[catChampAct].code = usage-context-ror-codesystem#champAct
* useContext[catChampAct].valueCodeableConcept from $JDV-J20-ChampActivite-ROR (required)
* useContext[catChampAct] ^short = "Contexte d'usage de la fiche de consignes de saisie afin de spécifier le domaine (champ d'activité) dans lequel s'inscrit l'offre saisie"

* item ^short = "Structure du champs de la fiche"
* item MS
* item.linkId ^short = "Unique id pour l'item de la fiche"
* item.prefix MS
* item.text MS
* item.text ^short = "Texte pour l'item"
* item.type ^short = "Type de l'item group | display | boolean | decimal | integer | date | dateTime ..."
* item.enableWhen MS
* item.enableWhen ^short = "Item autorisé / disponible que sous condition"
* item.enableBehavior MS
* item.required MS
* item.required ^short = "Champs requis"
* item.repeats MS
* item.repeats ^short = "Si l'item peut de répeter"
* item.readOnly MS
* item.readOnly ^short = "En lecture seule"
* item.code 0..0 //hors contexte ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* item.answerValueSet ^short = "Ensemble de valeurs autorisées en réponse" 
* item.answerValueSet MS
* item.answerOption MS
* item.answerOption ^short = "Réponses permises"
* item.answerOption.initialSelected MS
* item.answerOption.initialSelected ^short = "Option de réponse sélectionnée par défaut"
* item.definition ^short = "Element concerné par la saisie" 
* item.definition MS
* item.initial MS
* item.initial ^short = "Valeur(s) initiale(s)"