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
* name 1..1 MS
* name ^short = "Nom utilisé par les systèmes pour référencer la fiche exemple FDS-092"
* title 1..1 MS
* title ^short = "Titre de la fiche. Exemple Unité d’accueil de jour, Equipe spécialisée Alzheimer (ESA), Unité d’Hébergement « traditionnelle » , en EHPAD Petite unité de vie (PUV)"
* subjectType 1..* MS
* subjectType ^short = "Types de Ressources qui seront alimentées lors de la saisie de cette fiche : HealthcareService, Organization, Practioner, PractionerRole, Location"
* date ^short = "Date du dernier changement"
* date MS
* publisher ^short = "Nom de l'éditeur: Etablissement ou personne" 
* publisher MS
* description ^short = "Description de l'objet de la feuille de saisie" 
* description MS
* derivedFrom ^short = "Fiche(s) de saisie parente(s)"
* derivedFrom MS
* approvalDate 0..1 MS
* approvalDate ^short = "Date de validation de la fiche de saisie"
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "Date de dernière revue de la fiche"
* effectivePeriod ^short = "Periode de validité de la fiche" 
* effectivePeriod MS
* code ^short = "Catégorie(s) d'EG pour la(es)quelle(s) cette fiche de consigne de saisie est disponible"
* code from $JDV-J55-CategorieEG-ROR (required) // utilisation de code pour catégoriser les fiches par type d'EG
* code 1..* MS //cardinalité à validerpar le ROR rendant obligatoire la catégorie d'EG obligatoire pour la définition de la fiche de saisie
* item ^short = "Structure du champs de la fiche" 
* item MS
* item.required ^short = "Champs requis" 
* item.required MS
* item.code 0..0 //hors contexte ? http://hl7.org/fhir/R4/valueset-questionnaire-questions.html
* item.answerValueSet ^short = "Ensemble de valeurs autorisées en réponse" 
* item.answerValueSet MS
* item.definition ^short = "Element concerné par la saisie" 
* item.definition MS