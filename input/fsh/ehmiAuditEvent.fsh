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
* agent[ehmiDevice].who.type = #ehmiDEVICEID
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
    ehmiPatient 1..1 and
    ehmiMessage 1..1 and
    ehmiEnvelope 1..1 and
    ehmiOrigMessage 0..1 and
    ehmiOrigEnvelope 0..1
//* entity.modifierExtension 0..0 
* entity.type from ehmi-auditevent-entity-type-valueset
* entity.detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity.detail contains
    ehmiMessageType 0..1 and
    ehmiMessageVersion 0..1 and 
    ehmiEnvelopeType 0..1 and
    ehmiEnvelopeVersion 0..1
//* entity.type 0..1 
//* entity.what only Reference(Patient, M essageHeader)
//* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
* entity[ehmiPatient].what.identifier 1..1 MS SU
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiPatient].type = #ehmiPatient
//* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiMessage].type = #ehmiMessage
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiEnvelope].type = #ehmiEnvelope
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS 
* entity[ehmiOrigMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiOrigMessage].type = #ehmiOrigMessage
//* entity[OrigEnvelope].modifierExtension 0..0 
//* entity[OrigEnvelope].what only Reference(MessageHeader)
* entity[ehmiOrigEnvelope].what.identifier 1..1 MS SU
* entity[ehmiOrigEnvelope].type 1..1 MS
* entity[ehmiOrigEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiOrigEnvelope].type = #ehmiOrigEnvelope
