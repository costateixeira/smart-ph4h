Profile: SmartIPS-Composition
Parent: CompositionUvIps
Title: "SMART Composition (IPS)"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for SMART Guidelines" 

* section[sectionAdvanceDirectives] 1..1
* section[sectionAdvanceDirectives].entry obeys containsSmartConsent

//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].type = #profile
//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].path = "resource"
//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.rules = #open
//* section[sectionAdvanceDirectives].entry contains SmartConsent 1..*
//* section[sectionAdvanceDirectives].entry[SmartConsent] only Reference(SmartConsent)

Invariant: containsSmartConsent
Description: "At least one consent must be SmartConsent"
Severity: #error
Expression: "reference.where(type = 'Consent' and conformsTo('http://smart.who.int/ph4h/StructureDefinition/SmartConsent')).exists()"