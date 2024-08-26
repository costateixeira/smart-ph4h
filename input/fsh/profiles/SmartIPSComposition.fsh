Profile: SmartIPS-Composition
Parent: CompositionUvIps
Title: "SMART Composition (IPS)"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for SMART Guidelines" 

* section[sectionAdvanceDirectives] 1..1

* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].type = #profile
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].path = "resource"
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.rules = #open
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] contains SmartConsent 1..1
* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent][SmartConsent] only Reference(SmartConsent)