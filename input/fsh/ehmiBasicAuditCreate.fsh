Profile: EHMIBasicAuditCreate
Parent: IHE.BasicAudit.Create
Description: "EHMI profile of the IHE.BasicAudit.Create profile. UNDER CONSTRUCTION" 
* ^url = "http://medcomfhir.dk/ig/ehmiBALP/StructureDefinition/EHMIBasicAuditCreate"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EHMIBasicAuditCreate.</div>"
* ^text.status = #additional
* ^contact[0].name = "MedCom"
* ^contact[=].telecom.value = "https://www.medcom.dk/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "OVI"
* ^contact[=].telecom.value = "ovi@medcom.dk"
* ^contact[=].telecom.system = #email
//* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^status = #active
* ^publisher = "MedCom"
* ^date = "2024-01-01"
* ^copyright = "CC0-1.0"
* ^experimental = false
* id 1..
* id MS SU
* type MS SU
* type from ehmi-auditevent-types-valueset
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
//* type.system = $EHMIAuditEventTypes
//* type.display = "EHMI message events"
* subtype ^slicing.discriminator.type = #value
//* subtype ^slicing.discriminator.path = $this
* subtype ^slicing.rules = #open //#closed eller #open 
* subtype contains
    ehmiSubType 1..1
* subtype 2..3 MS SU
* subtype[ehmiSubType] from ehmi-auditevent-sub-types-valueset
* subtype[ehmiSubType].system = $EHMIAuditEventSubTypes
//* subtype.system = $EHMIAuditEventSubTypes
* action 0..0
* period 0..0
* outcome 1..1 MS SU
* outcome from ehmi-auditevent-outcome-valueset
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = type
* agent ^slicing.rules = #open //#closed eller #open 
//* agent ^slicing.ordered = false
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 
* agent 4..6
* agent.type from ehmi-auditevent-participationroletype-valueset 
* agent.who.type from ehmi-auditevent-agent-who-identifier-types-valueset
//* ^agent[ehmiSender]
* agent[ehmiSender].name 1..1 MS
* agent[ehmiSender].type 1..1 MS
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.type 1..1 MS SU
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
//* agent[ehmiReceiver]
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].who.type 1..1 MS SU
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from ehmi-auditevent-source-type-valueset
// entity
* entity 2..
* entity ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* entity contains
//    ehmiPatient 1..1 and
    ehmiMessage 1..1 and
    ehmiEnvelope 0..1 and
    ehmiOrigMessage 0..1 and
    ehmiOrigEnvelope 0..1 
* entity.type from ehmi-auditevent-entity-type-valueset
//* entity[ehmiMessage]
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type 1..1 MS 
* entity[ehmiMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiMessage].detail 2..2
* entity[ehmiMessage].detail[ehmiMessageType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType (exactly)
* entity[ehmiMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageVersion].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString 1..1
//* entity[ehmiEnvelope]
* entity[ehmiEnvelope].what.identifier 1..1 MS SU
* entity[ehmiEnvelope].type 1..1 MS
* entity[ehmiEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiEnvelope].detail contains
    ehmiEnvelopeType 1..1 and
    ehmiEnvelopeVersion 1..1
* entity[ehmiEnvelope].detail 2..2
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType (exactly)
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString 1..1
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion (exactly)
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString 1..1
//* entity[ehmiOrigMessage]
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type 1..1 MS
* entity[ehmiOrigMessage].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiOrigMessage].type = $EHMIAuditEventEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open  
  * ^short = "something short"
* entity[ehmiOrigMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiOrigMessage].detail 2..2
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString 1..1
//* entity[ehmiOrigEnvelope]
* entity[ehmiOrigEnvelope].what.identifier 1..1 MS SU
* entity[ehmiOrigEnvelope].type 1..1 MS
* entity[ehmiOrigEnvelope].type from ehmi-auditevent-entity-type-valueset
* entity[ehmiOrigEnvelope].type = $EHMIAuditEventEntityType#ehmiOrigEnvelope
* entity[ehmiOrigEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
  * ^short = "something short"
* entity[ehmiOrigEnvelope].detail contains
    ehmiEnvelopeType 1..1 and
    ehmiEnvelopeVersion 1..1
* entity[ehmiOrigEnvelope].detail 2..2
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType (exactly)
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].valueString 1..1
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type from ehmi-auditevent-entity-detail-type-valueset
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion (exactly)
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].valueString 1..1
