/*
Profile: EHMISampleAuditEvent
Parent: AuditEvent
Description: "EHMI profile of the AuditEvent resource."
// xyz
* id 1..
* id MS SU
* type MS SU
* type from $EhmiDeliveryStatusTypesValueSet
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI message events"
* subtype 1..1 MS SU
* subtype from $EhmiDeliveryStatusSubTypesValueSet
* subtype.system = $EhmiDeliveryStatusSubTypes
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from $EhmiDeliveryStatusOutcomeValueSet
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
* agent.type from $EhmiDeliveryStatusParticipationRoleTypeValueSet 
//* agent.name 0..1 
//* agent.network 0..0
//* agent.network.type 0..0
* agent.who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueSet
//* agent.who 0.. 
//* agent.who.type 0..1 
//* agent.who.identifier 0..1 
* agent[ehmiSender].name 1..1 MS
* agent[ehmiSender].type 1..1 MS
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
//* ^agent[ehmiSender].requestor = true
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
// ^agent[Receiver].requestor = false
* agent[ehmiDevice].name 1..1 MS
* agent[ehmiDevice].type 1..1 MS
* agent[ehmiDevice].type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice
* agent[ehmiDevice].who 1..1 MS
* agent[ehmiDevice].who only Reference(Device)
* agent[ehmiDevice].who.identifier 1..1 MS SU
* agent[ehmiDevice].who.type 1..1 MS SU
* agent[ehmiDevice].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#ehmiDEVICEID
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueSet
// entity
* entity 2..4
* entity ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity contains
    ehmiPatient 1..1 and
    ehmiMessage 1..1 and
    ehmiEnvelope 0..1 and
    ehmiOrigMessage 0..1 
//* entity.modifierExtension 0..0 
* entity.type from $EhmiDeliveryStatusEntityTypeValueSet
* entity.detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity.detail contains
    ehmiMessageType 0..1 and
    ehmiMessageVersion 0..1 and 
    ehmiEnvelopeType 0..1 and
    ehmiEnvelopeVersion 0..1
* entity.detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity.type 0..1 
//* entity.what only Reference(Patient, M essageHeader)
//* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
* entity[ehmiPatient].what.identifier 1..1 MS SU
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
//* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
//* entity[ehmiMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiMessage].detail[ehmiMessageVersion].type 1..1 MS SU
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiEnvelope].type.display = "Envelope"
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type 1..1 MS SU
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type 1..1 MS SU
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS
* entity[ehmiOrigMessage].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigMessage].type.display = "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType 
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type 1..1 MS SU
*/