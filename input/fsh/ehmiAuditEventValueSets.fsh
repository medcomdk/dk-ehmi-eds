CodeSystem: ehmi-audit-event-type
Id: ehmi-audit-event-types
Title: "ehmi-audit-event-types"
Description: "ehmi-audit-event-types for the EHMI Messaging Infrastructure"
* #EHMI-messaging "EHMI message events"

ValueSet: EHMIAuditEventTypesValueset
Id: ehmi-auditevent-types-valueset
Title: "EHMI AuditEventTypes Valueset"
Description: "ValueSet containing codes for EHMI AuditEventTypes"
* include codes from system ehmi-audit-event-type

CodeSystem: ehmi-audit-event-sub-type
Id: ehmi-audit-event-sub-types
Title: "ehmi-audit-event-types"
Description: "ehmi-audit-event-types for the EHMI Messaging Infrastructure"
* #msg-created "A new message has been created"
* #msg-sent "A new message has been sent"
* #msg-received "A new message has been recieved"
* #msg-finalized "A message has reached its final reciever"

ValueSet: EHMIAuditEventSubTypesValueset
Id: ehmi-auditevent-sub-types-valueset
Title: "EHMI AuditEvent SubTypes Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent SubTypes"
* include codes from system ehmi-audit-event-sub-type

