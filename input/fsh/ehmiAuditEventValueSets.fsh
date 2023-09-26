CodeSystem: ehmi-audit-event-type
Id: ehmi-audit-event-types
Title: "ehmi-audit-event-types"
Description: "ehmi-audit-event-types for the EHMI Messaging Infrastructure"
* #msg-created "A new message has been created"
* #msg-sent "A new message has been sent"
* #msg-received "A new message has been recieved"
* #msg-finalized "A message has reached its final reciever"


ValueSet: EHMIAuditEventTypesValueset
Id: ehmi-auditevent-types-valueset
Title: "EHMI AuditEventTypes Valueset"
Description: "ValueSet containing codes for EHMI AuditEventTypes"
* include codes from system ehmi-audit-event-type