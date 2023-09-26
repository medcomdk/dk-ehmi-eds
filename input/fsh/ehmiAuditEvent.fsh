Profile: EHMIAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource. X"
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
* subtype 1..1 MS SU
* subtype from ehmi-auditevent-sub-types-valueset
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
* agent.type 1..1 MS SU
* agent.type from ehmi-auditevent-participationroletype-valueset
* agent.who 1..1 MS SU
* agent.who.identifier 1..1
* agent.who only Reference(Device)
* agent.name 1..1 MS SU
* agent.network.type 1..1 MS SU
* agent.network.type from ehmi-auditevent-network-valueset
* source.observer 1..1 MS SU
* source.observer only Reference(Device)
* source.type 1..1 MS SU
* source.type from ehmi-auditevent-audit-source-type-valueset
* entity 3..
* entity ^slicing.discriminator.type = #what
* entity ^slicing.discriminator.path = "$this.content"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = false   // can be omitted, since false is the default
* entity ^slicing.description = "Slice based on the entity.what pattern"
* entity[Patient] 1..1
* entity[Patient].what only Reference(Patient) 1..1
* entity[Patient].detail.id 1..1
* entity[Person] 1..1
* entity[Person].what only Reference(Person) 1..1
* entity[Person].detail.id 1..1


//  Instance: EHMIAuditEventExample
//  InstanceOf: EHMIAuditEvent
//  Description: "An example of a EHMIAuditEvent"
