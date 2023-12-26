Extension: RORHealthcareServiceContactTelecom
Id: ror-healthcareservice-contact-telecom
Description: "Extension créée dans le cadre du ROR pour les télécommunications du contact."
* ^context.type = #element
* ^context.expression = "HealthcareService.extension"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    RORTelecomCommunicationChannel named ror-telecom-communication-channel 1..1 and
    RORTelecomUsage named ror-telecom-usage 0..1 and
    RORTelecomConfidentialityLevel named ror-telecom-confidentiality-level 1..1 and
    telecomAddress 1..1
* extension[telecomAddress].value[x] only string


Mapping:  ConceptMetier_RORHealthcareServiceContactTelecom
Source:   RORHealthcareServiceContactTelecom
Id:       specmetier-to-RORHealthcareServiceContactTelecom
Title:    "Spécification métier vers l'extension RORHealthcareServiceContactTelecom"
* -> "Telecommunication"
* extension[RORTelecomCommunicationChannel] -> "canal"
* extension[RORTelecomUsage] -> "utilisation"
* extension[RORTelecomConfidentialityLevel] -> "niveauConfidentialite"
* extension[telecomAddress] -> "adresseTelecom"