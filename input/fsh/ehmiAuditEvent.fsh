Profile: EHMIAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource."
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
* subtype 1..1 MS SU
* subtype from ehmi-auditevent-sub-types-valueset
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent.type 1..1 MS 
* agent ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* agent contains
    Sender 1..1 and
    Receiver 1..1 and
    Device 1..1
* agent[Sender].who only Reference(Organization)
* agent[Sender].who.identifier 1..1 MS SU
//* ^agent[Sender].requestor = true
* agent[Receiver].who only Reference(Organization)
* agent[Receiver].who.identifier 1..1 MS SU
//* ^agent[Receiver].requestor = false
* agent[Device].who only Reference(Device)
* agent[Device].who.identifier 1..1 MS SU
//* ^agent[Device].requestor = false
* agent.type from ehmi-auditevent-participationroletype-valueset
* agent.who 1..1 MS SU
* agent.who.identifier 1..1
* agent.who only Reference(Device)
* agent.name 1..1 MS 
* agent.network.type 1..1 MS 
* agent.network.type from ehmi-auditevent-network-valueset
* source.observer 1..1 MS 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
* entity.type from ehmi-auditevent-entity-type-valueset
* entity ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity contains
    Patient 1..1 and //check kardinalitet
    Message 1..1 and
    Envelope 1..1
* entity[Patient].type from ehmi-auditevent-entity-type-valueset
* entity[Patient].what only Reference(Patient)
* entity[Message].what only Reference(MessageHeader)
/*
* ^entity[Patient].type.code = Patient
* [Patient]
  * ^short = "Describe usage of slice - Patient"
* code.coding[Message]
  * ^short = "Describe usage of slice - Message"
  * type = #2
* code.coding[Envelope]
  * ^short = "Describe usage of slice - Message"
  * type = #3
*/
/*
* entity 3..
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "what"
* entity ^slicing.rules = #open
* entity ^slicing.ordered = false   // can be omitted, since false is the default
* entity ^slicing.description = "Slice based on the entity.what pattern"
*/
/*
* entity[Patient].what only Reference(Patient)
* entity[Patient].what 1..1
* entity[Patient].what only Reference(Patient)
* entity[Patient].detail.id 1..1
* entity[Person].what only Reference(Person)

* entity[Person].what 1..1
* entity[Person].what only Reference(Person)
* entity[Person].detail.id 1..1
*/
