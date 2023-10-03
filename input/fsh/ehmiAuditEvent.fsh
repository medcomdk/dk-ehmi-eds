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
* agent ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* agent contains
    SENDER 1..3 and
    RECEIVER 0..1 and
    DEVICE 0..1
//* agent.modifierExtension 0..0 
//* agent.type 0..1
* agent.type from ehmi-auditevent-participationroletype-valueset 
//* agent.name 0..1 
//* agent.network 0..0
//* agent.network.type 0..0
* agent.who.type from ehmi-auditevent-agent-who-identifiers-valueset
//* agent.who 0.. 
//* agent.who.type 0..1 
//* agent.who.identifier 0..1 
* agent[SENDER].name 1..1 MS
* agent[SENDER].type 1..1 MS
* agent[SENDER].type.coding.code = #SENDER
* agent[SENDER].who 1..1 MS
* agent[SENDER].who only Reference(Organization)
* agent[SENDER].who.identifier 1..1 MS SU
* agent[SENDER].who.type 1..1 MS SU
* agent[SENDER].who.type.value = #GLN
//* ^agent[Sender].requestor = true
* agent[RECEIVER].name 1..1 MS
* agent[RECEIVER].type 1..1 MS
* agent[RECEIVER].type.coding.code = #RECEIVER
* agent[RECEIVER].who 1..1 MS
* agent[RECEIVER].who only Reference(Organization)
* agent[RECEIVER].who.identifier 1..1 MS SU
* agent[RECEIVER].who.type 1..1 MS SU
* agent[RECEIVER].who.type.value = #GLN
// ^agent[Receiver].requestor = false
* agent[DEVICE].name 1..1 MS
* agent[DEVICE].type 1..1 MS
* agent[DEVICE].who 1..1 MS
* agent[DEVICE].who only Reference(Device)
* agent[DEVICE].who.identifier 1..1 MS SU
* agent[DEVICE].who.type 1..1 MS SU
* agent[DEVICE].who.type.value = #DEVICEID
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
//* entity.type MS SU
* entity ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity contains
    Patient 1..5 and //check kardinalitet
    Message 0..1 and
    Envelope 0..1 and
    OrigMessage 0..1 and
    OrigEnvelope 0..1
//* entity 1..5 MS
* entity.modifierExtension 0..0 
* entity.type from ehmi-auditevent-entity-type-valueset
* entity.type 0..1 
// * entity.what only Reference(Patient, MessageHeader)
* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
* entity[Patient].what.identifier 1..1 MS SU
* entity[Patient].type 1..1 MS 
* entity[Patient].type from ehmi-auditevent-entity-type-valueset
* entity[Patient].type.code = #Patient
//* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[Message].what.identifier 1..1 MS SU
* entity[Message].type 1..1 MS 
* entity[Message].type from ehmi-auditevent-entity-type-valueset
* entity[Message].type.code = #Message
* entity[Message].detail.type = "MessageType"
* entity[Message].detail.valueString = "MuniciplalityObservations"
* entity[Message].detail.type = "MessageVersion"
* entity[Message].detail.valueString = "1.0"
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[Envelope].what.identifier 1..1 MS SU
* entity[Envelope].type 1..1 MS
* entity[Envelope].type from ehmi-auditevent-entity-type-valueset
* entity[Envelope].type.code = #Envelope
* entity[Envelope].detail.type = "EnvelopeType"
* entity[Envelope].detail.valueString = "SBDH"
* entity[Envelope].detail.type = "EnvelopeVersion"
* entity[Envelope].detail.valueString = "2.0"
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[OrigMessage].what.identifier 1..1 MS SU
* entity[OrigMessage].type 1..1 MS 
* entity[OrigMessage].type from ehmi-auditevent-entity-type-valueset
* entity[OrigMessage].type.code = #OrigMessage
//* entity[OrigEnvelope].modifierExtension 0..0 
//* entity[OrigEnvelope].what only Reference(MessageHeader)
* entity[OrigEnvelope].what.identifier 1..1 MS SU
* entity[OrigEnvelope].type 1..1 MS
* entity[OrigEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[OrigEnvelope].type.code = #OrigEnvelope
