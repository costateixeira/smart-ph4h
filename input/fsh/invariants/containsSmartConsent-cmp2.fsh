Invariant: containsSmartConsent-cmp2
Description: "At least one entry of consent must be SmartConsent"
Severity: #error
Expression: "reference.resolve().where(conformsTo('http://smart.who.int/ph4h/StructureDefinition/SmartConsent')).exists()"