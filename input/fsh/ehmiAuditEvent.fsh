Profile: EHMIAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource. X"
* id 1..
* id MS
* type MS
* type from ehmi-auditevent-types-valueset
* subtype 1..1
* subtype MS
* subtype from ehmi-auditevent-sub-types-valueset
* outcome 1..1
* outcome MS
* outcome from ehmi-auditevent-outcome-valueset
* agent.type 1..1
* agent.type MS
* agent.type from ehmi-audit-event-participationroletype-valueset

//  Instance: EHMIAuditEventExample
//  InstanceOf: EHMIAuditEvent
//  Description: "An example of a EHMIAuditEvent"
