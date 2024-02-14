Profile: EHMIBasicAuditPatientQuery
Parent: EHMIBasicAuditQuery
Description: "EHMI profile of the IHE.BasicAudit.PatientQuery profile. UNDER CONSTRUCTION" 
/*
* id 1..
* id MS SU
* type MS SU
* type from $EhmiDeliveryStatusTypesValueset
//* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging
//* type.system = $EhmiDeliveryStatusTypes
//* type.display = "EHMI message events"
* subtype 1..1 MS SU
* subtype from $EhmiDeliveryStatusSubTypesValueset
* subtype.system = $EhmiDeliveryStatusSubTypes
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from $EhmiDeliveryStatusOutcome
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = agent
* agent ^slicing.rules = #open //#closed eller #open 
//* agent ^slicing.ordered = false
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 and
    ehmiDevice 1..
//* agent.modifierExtension 0..0 
//* agent.type 0..1
* agent 5..
* agent.type from $EhmiDeliveryStatusParticipationRoleTypeValueset 
//* agent.name 0..1 
//* agent.network 0..0
//* agent.network.type 0..0
* agent.who.type from ehmi-delivery-status-agent-who-identifiers-valueset
//* agent.who 0.. 
//* agent.who.type 0..1 
//* agent.who.identifier 0..1 
* agent[ehmiSender]()
* agent[ehmiSender].name 1..1 MS
* agent[ehmiSender].type 1..1 MS
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifiers#GLN
//* ^agent[ehmiSender].requestor = true
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifiers#GLN
// ^agent[Receiver].requestor = false
* agent[ehmiDevice].name 1..1 MS
* agent[ehmiDevice].type 1..1 MS
* agent[ehmiDevice].type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice
* agent[ehmiDevice].who 1..1 MS
* agent[ehmiDevice].who only Reference(Device)
* agent[ehmiDevice].who.identifier 1..1 MS SU
* agent[ehmiDevice].who.type 1..1 MS SU
* agent[ehmiDevice].who.type = $EhmiDeliveryStatusAgentWhoIdentifiers#ehmiDEVICEID
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueset
*/
// entity
* entity ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* entity contains
    ehmiPatient 1..1 
* entity 3..
/* entity.modifierExtension 0..0 
* entity.type from $EhmiDeliveryStatusEntityTypeValueset
* entity.detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity.detail contains
    ehmiMessageType 0..1 and
    ehmiMessageVersion 0..1 and 
    ehmiEnvelopeType 0..1 and
    ehmiEnvelopeVersion 0..1
* entity.detail.type from $EhmiDeliveryStatusEntityDetailTypeValueset
//* entity.type 0..1 
//* entity.what only Reference(Patient, M essageHeader)
//* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
*/
* entity[ehmiPatient].what.identifier 1..1 MS SU
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from $EhmiDeliveryStatusEntityTypeValueset
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
/* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from $EhmiDeliveryStatusEntityTypeValueset
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueset
* entity[ehmiMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueset
//* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
//* entity[ehmiMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiMessage].detail[ehmiMessageVersion].type 1..1 MS SU
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from $EhmiDeliveryStatusEntityTypeValueset
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueset
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueset
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type 1..1 MS SU
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type 1..1 MS SU
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS
* entity[ehmiOrigMessage].type from $EhmiDeliveryStatusEntityTypeValueset
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueset
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueset
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType 
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type 1..1 MS SU
*/