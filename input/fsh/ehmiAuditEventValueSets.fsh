CodeSystem: ehmi-audit-event-type
Id: ehmi-audit-event-types
Title: "EHMI AuditEvent Types CS"
Description: "ehmi-audit-event-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #EHMI-messaging "EHMI message events"

ValueSet: EHMIAuditEventTypesValueset
Id: ehmi-auditevent-types-valueset
Title: "EHMI AuditEvent Types Valueset"
Description: "ValueSet containing codes for EHMI AuditEventTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-audit-event-type

CodeSystem: ehmi-audit-event-sub-type
Id: ehmi-audit-event-sub-types
Title: "EHMI AuditEvent SubTypes CS"
Description: "ehmi-audit-event-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #msg-created "A new message has been created"
* #msg-sent "A new message has been sent"
* #msg-received "A new message has been recieved"
* #msg-finalized "A message has reached its final reciever"

ValueSet: EHMIAuditEventSubTypesValueset
Id: ehmi-auditevent-sub-types-valueset
Title: "EHMI AuditEvent SubTypes Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent SubTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system ehmi-audit-event-sub-type

ValueSet: EHMIAuditEventOutcomeValueset
Id: ehmi-audit-event-outcome-valueset
Title: "EHMI AuditEvent Outcome Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent SubTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include #0 from system http://hl7.org/fhir/audit-event-outcome
* include #8 from system http://hl7.org/fhir/audit-event-outcome
* exclude #4 from system http://hl7.org/fhir/audit-event-outcome
* exclude #12 from system http://hl7.org/fhir/audit-event-outcome
