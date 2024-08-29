Invariant: containsSmartConsent-cmp
Description: "At least one consent in the Advanced Directives section must be SmartConsent"
Severity: #error
Expression: "section.where(title='Advance Directives').entry.resolve().where(meta.profile='http://smart.who.int/ph4h/StructureDefinition/SmartConsent').exists()"