Profile: EHMIAuditEventCreate
Parent: IHE.BasicAudit.Create
Description: "EHMI profile of the AuditEvent resource."
/*
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
//* type.system = $EHMIAuditEventTypes
//* type.display = "EHMI message events"
* subtype 1..1 MS SU
* subtype from ehmi-auditevent-sub-types-valueset
* subtype.system = $EHMIAuditEventSubTypes
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
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
* agent.type from ehmi-auditevent-participationroletype-valueset 
//* agent.name 0..1 
//* agent.network 0..0
//* agent.network.type 0..0
* agent.who.type from ehmi-auditevent-agent-who-identifiers-valueset
//* agent.who 0.. 
//* agent.who.type 0..1 
//* agent.who.identifier 0..1 
* agent[ehmiSender]()
* agent[ehmiSender].name 1..1 MS
* agent[ehmiSender].type 1..1 MS
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
//* ^agent[ehmiSender].requestor = true
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
// ^agent[Receiver].requestor = false
* agent[ehmiDevice].name 1..1 MS
* agent[ehmiDevice].type 1..1 MS
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#ehmiDevice
* agent[ehmiDevice].who 1..1 MS
* agent[ehmiDevice].who only Reference(Device)
* agent[ehmiDevice].who.identifier 1..1 MS SU
* agent[ehmiDevice].who.type 1..1 MS SU
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#ehmiDEVICEID
//* ^agent[Device].requestor = false
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
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
* entity.type from ehmi-auditevent-entity-type-valueset
* entity.detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed //#closed eller #open 
* entity.detail contains
    ehmiMessageType 0..1 and
    ehmiMessageVersion 0..1 and 
    ehmiEnvelopeType 0..1 and
    ehmiEnvelopeVersion 0..1
* entity.detail.type from ehmi-auditevent-entity-detail-type-valueset
//* entity.type 0..1 
//* entity.what only Reference(Patient, M essageHeader)
//* entity.what.identifier 0..1 
//* entity[Patient].modifierExtension 0..0 
//* entity[Patient].what only Reference(Patient)
* entity[ehmiPatient].what.identifier 1..1 MS SU
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
//* entity[Message].modifierExtension 0..0 
//* entity[Message].what only Reference(MessageHeader)
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiMessage].detail[ehmiMessageVersion].type from ehmi-auditevent-entity-detail-type-valueset
//* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
//* entity[ehmiMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
//* entity[ehmiMessage].detail[ehmiMessageVersion].type 1..1 MS SU
//* entity[Envelope].modifierExtension 0..0 
//* entity[Envelope].what only Reference(MessageHeader)
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type from ehmi-auditevent-entity-detail-type-valueset
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
//* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type 1..1 MS SU
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
//* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type 1..1 MS SU
//* entity[OrigMessage].modifierExtension 0..0 
//* entity[OrigMessage].what only Reference(MessageHeader)
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS
* entity[ehmiOrigMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiOrigMessage].type = $EHMIAuditEventEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from ehmi-auditevent-entity-detail-type-valueset
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType 
//* entity[ehmiOrigMessage].detail[ehmiMessageType].type 1..1 MS SU
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
//* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type 1..1 MS SU
*/