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
* agent.type from ehmi-auditevent-participationroletype-valueset
* agent.who 1..1
* agent.who MS
* agent.who.identifier 1..1
* agent.who Reference(Device)
* agent.name 1..1
* agent.name MS
* agent.network.type 1..1
* agent.network.type MS
* agent.network.type from ehmi-auditevent-network-valueset
* source.observer MS
* source.observer 1..1
* source.observer Reference(Device)
* source.type MS
* source.type 1..1
* source.type from ehmi-auditevent-audit-source-type-valueset

//  Instance: EHMIAuditEventExample
//  InstanceOf: EHMIAuditEvent
//  Description: "An example of a EHMIAuditEvent"
