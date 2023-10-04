Profile: EHMIAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource."
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
* type.code = #EHMI-messaging
* subtype 1..1 MS SU
* subtype from ehmi-auditevent-sub-types-valueset
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = type
* agent ^slicing.rules = #closed //#closed eller #open 
* agent ^slicing.ordered = true
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 and
    ehmiDevice 1..1
//* agent.modifierExtension 0..0 
//* agent.type 0..1
* agent 3..3
* agent.type from ehmi-auditevent-participationroletype-valueset 
//* agent.name 0..1 
//* agent.network 0..0
//* agent.network.type 0..0
* agent.who.type from ehmi-auditevent-agent-who-identifiers-valueset
//* agent.who 0.. 
//* agent.who.type 0..1 
//* agent.who.identifier 0..1 
* agent[ehmiSender].name 1..1 MS
* agent[ehmiSender].type 1..1 MS
* agent[ehmiSender].type = #ehmiSender
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type = #GLN
//* ^agent[ehmiSender].requestor = true
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = #ehmiReceiver
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type = #GLN
// ^agent[Receiver].requestor = false
* agent[ehmiDevice].name 1..1 MS
* agent[ehmiDevice].type 1..1 MS
* agent[ehmiDevice].who 1..1 MS
* agent[ehmiDevice].who only Reference(Device)
* agent[ehmiDevice].who.identifier 1..1 MS SU
* agent[ehmiDevice].who.type 1..1 MS SU
* agent[ehmiDevice].who.type = #DEVICEID
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
// entity
* entity 3..5
* entity ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity contains
    Patient 1..1 and
    Message 1..1 and
    Envelope 1..1 and
    OrigMessage 0..1 and
    OrigEnvelope 0..1
//* entity.modifierExtension 0..0 
* entity.type from ehmi-auditevent-entity-type-valueset
* entity.detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity.detail contains
    MessageType 0..1 and
    MessageVersion 0..1 and 
    EnvelopeType 0..1 and
    EnvelopeVersion 0..1
//* entity.type 0..1 
//* entity.what only Reference(Patient, M essageHeader)
//* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
* entity[Patient].what.identifier 1..1 MS SU
* entity[Patient].type 1..1 MS 
* entity[Patient].type from ehmi-auditevent-entity-type-valueset
* entity[Patient].type = #Patient
//* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[Message].what.identifier 1..1 MS SU
* entity[Message].type 1..1 MS 
* entity[Message].type from ehmi-auditevent-entity-type-valueset
* entity[Message].type = #Message
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[Envelope].what.identifier 1..1 MS SU
* entity[Envelope].type 1..1 MS
* entity[Envelope].type from ehmi-auditevent-entity-type-valueset
* entity[Envelope].type = #Envelope
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[OrigMessage].what.identifier 1..1 MS SU
* entity[OrigMessage].type 1..1 MS 
* entity[OrigMessage].type from ehmi-auditevent-entity-type-valueset
* entity[OrigMessage].type = #OrigMessage
//* entity[OrigEnvelope].modifierExtension 0..0 
//* entity[OrigEnvelope].what only Reference(MessageHeader)
* entity[OrigEnvelope].what.identifier 1..1 MS SU
* entity[OrigEnvelope].type 1..1 MS
* entity[OrigEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[OrigEnvelope].type = #OrigEnvelope
