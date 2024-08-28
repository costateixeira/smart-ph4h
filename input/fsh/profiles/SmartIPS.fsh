Profile: SmartIPS
Parent: BundleUvIps
Title: "Bundle - IPS for SMART Guidelines"
Description: "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide for the SMART Guidelines."
* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    consent 1..*
* entry[consent].resource only Consent
* entry[consent].resource obeys containsSmartConsent
* entry[composition].resource obeys containsSmartConsent-cmp
/*
* entry[consent] ^slicing.discriminator[0].type = #profile
* entry[consent] ^slicing.discriminator[0].path = "resource"
* entry[consent] ^slicing.rules = #open
* entry[consent] contains SmartConsent 1..1
* entry[consent][SmartConsent].resource only SmartConsent */


Invariant: containsSmartConsent
Description: "At least one consent must be SmartConsent"
Severity: #error
Expression: "where(meta.profile='http://smart.who.int/ph4h/StructureDefinition/SmartConsent').exists()"

Invariant: containsSmartConsent-cmp
Description: "At least one consent in the Advanced Directives section must be SmartConsent"
Severity: #error
Expression: "section.where(title='Advance Directives').entry.resolve().where(meta.profile='http://smart.who.int/ph4h/StructureDefinition/SmartConsent').exists()"