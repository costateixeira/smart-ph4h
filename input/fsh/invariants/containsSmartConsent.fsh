Invariant: containsSmartConsent
Description: "At least one consent must be SmartConsent"
Severity: #error
Expression: "where(conformsTo('http://smart.who.int/ph4h/StructureDefinition/SmartConsent')).exists()"