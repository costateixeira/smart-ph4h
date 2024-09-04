Profile: SmartIPSComposition
Parent: CompositionUvIps
Title: "SMART Composition (IPS)"
Description: "This profile represents the constraints applied to the Composition resource by the International Patient Summary (IPS) for use within the SMART Guidelines

Note: The profile expects atleast one SMART Consent entry to be present within Advance Directives section" 

* section[sectionAdvanceDirectives] 1..1
//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].type = #profile
//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.discriminator[0].path = "resource"
//* section[sectionAdvanceDirectives].entry[advanceDirectivesConsent] ^slicing.rules = #open
//* section[sectionAdvanceDirectives].entry contains SmartConsent 1..*
//* section[sectionAdvanceDirectives].entry[SmartConsent] only Reference(SmartConsent)
