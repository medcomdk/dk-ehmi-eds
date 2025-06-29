Profile: EdsBasicDeliveryStatus
Parent: AuditEvent
//Parent: IHE.BasicAudit.Create
Description: "
EdsBasicDeliveryStatus is used to define the basic delivery status reporting for EDS from an EDS Client to the EDS Server.

A basic EdsBasicDeliveryStatus is based on the AuditEvent profile for and is submitted when a EHMI Core Messaging transaction 
from one station in the messageflow to another station happens successfully.

EdsBasicDeliveryStatus is only used when a Patient entity is not required, for instance for delivery status reporting of Acknowledgments. 
The EdsBasicDeliveryStatus does not have a Patient subject or is otherwise associated with a Patient. 
When the message transaction is Patient specific then EdsPatientDeliveryStatus is used.

When successfully submitted from an EDS Client to the EDS Server then the recorded EdsBasicDeliveryStatus has conformed to the profile otherwise it would 
not have a successful outcome and the EDS Client will receive an OperationOutcome indicating the failure.
" 
* ^url = "http://medcomehmi.dk/ig/eds/StructureDefinition/EdsBasicDeliveryStatus"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsBasicDeliveryStatus.</div>"
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
* ^date = "2025-04-01"
* ^copyright = "CC0-1.0"
* ^experimental = false
* id 1..
* id MS SU
* type MS SU
//* type.system = "http://terminology.hl7.org/CodeSystem/audit-event-type"
//* type.code = http://terminology.hl7.org/CodeSystem/audit-event-type#object
* type.system = $EhmiDeliveryStatusTypes
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI messaging event"
* subtype 1..1 MS SU
* subtype.code from $EdsSubtypesVS
* subtype.system = $EdsSubtypes
* subtype ^slicing.discriminator.type = #value
* subtype ^slicing.discriminator.path = code //"$this"
* subtype ^slicing.rules = #open // allow other codes
* subtype contains
//    msg-created 0..1 and 
    msg-created-and-sent 0..1 MS and 
    msg-sent 0..1 MS and 
    msg-received 0..1 MS and 
    msg-received-and-finalized 0..1 MS 
//    and msg-finalized 0..1 
//* subtype[msg-created]
/* subtype[msg-created].code 1..1
* subtype[msg-created].system 1..1
* subtype[msg-created].display 1..1
* subtype[msg-created] = $EdsSubtypes#msg-created "Message created" (exactly)
*/
//* subtype[msg-created-and-sent]
* subtype[msg-created-and-sent].code 1..1
* subtype[msg-created-and-sent].system 1..1
//* subtype[msg-created-and-sent].system = $EdsSubtypes
//* subtype[msg-created-and-sent].display 1..1
* subtype[msg-created-and-sent].code from $EdsSubtypesVS
* subtype[msg-created-and-sent].code = #msg-created-and-sent "Message created and sent" (exactly)
//* subtype[msg-sent]
* subtype[msg-sent].code 1..1
* subtype[msg-sent].system 1..1
//* subtype[msg-sent].system = $EdsSubtypes
//* subtype[msg-sent].display 1..1
* subtype[msg-sent].code from $EdsSubtypesVS
* subtype[msg-sent].code = #msg-sent "Message sent" (exactly)
//* subtype[msg-received]
* subtype[msg-received].code 1..1
* subtype[msg-received].system 1..1
//* subtype[msg-received].system = $EdsSubtypes
//* subtype[msg-received].display 1..1
* subtype[msg-received].code from $EdsSubtypesVS
* subtype[msg-received].code = #msg-received "Message received" (exactly)
//* subtype[msg-received-and-finalized]
* subtype[msg-received-and-finalized].code 1..1
* subtype[msg-received-and-finalized].system 1..1
//* subtype[msg-received-and-finalized].system = $EdsSubtypes
//* subtype[msg-received-and-finalized].display 1..1
* subtype[msg-received-and-finalized].code from $EdsSubtypesVS
* subtype[msg-received-and-finalized].code = #msg-received-and-finalized "Message received and finalized" (exactly)
//* subtype[msg-finalized]
/* subtype[msg-finalized].code 1..1
* subtype[msg-finalized].system 1..1
* subtype[msg-finalized].display 1..1
* subtype[msg-finalized] = $EdsSubtypes#msg-finalized "Message finalized" (exactly)
*/
* action 1..1
* action = http://hl7.org/fhir/audit-event-action#C
* period 0..0
* outcome 1..1 MS SU
* outcome from $EhmiDeliveryStatusOutcomeValueSet
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent.extension contains eds-otherId named GLNId 0..* MS
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 
* agent 2..4
//* ^agent[ehmiSender]
* agent[ehmiSender].extension ^slicing.discriminator[1].type = #value
* agent[ehmiSender].extension ^slicing.discriminator[=].path = "value.ofType(Identifier).type"
* agent[ehmiSender].extension[GLNId] contains 
	  gln 0..* 
* agent[ehmiSender].name 0..1 MS 
* agent[ehmiSender].type 1..1 MS 
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type ^short = "$EhmiDeliveryStatusParticipationRoleType#ehmiSender"
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.identifier ^short = "equals SBDH/BusinessScope/Scope[Type=Sender]/InstanceIdentifier"
//* agent[ehmiSender].who.type 0..1 MS SU
//* agent[ehmiSender].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueset
//* agent[ehmiSender].who.type ^short = "SOR"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type ^short = "GLN"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value 1..1 MS
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value ^short = "equals SBDH/Sender/Identifier"
//* agent[ehmiReceiver]
* agent[ehmiReceiver].extension ^slicing.discriminator[1].type = #value
* agent[ehmiReceiver].extension ^slicing.discriminator[=].path = "value.ofType(Identifier).type"
* agent[ehmiReceiver].extension[GLNId] contains 
	  gln 0..* 
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
//* agent[ehmiReceiver].who.type 0..1 MS SU
//* agent[ehmiReceiver].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueset
//* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR 
//* agent[ehmiReceiver].who.type  ^short = "SOR"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type ^short = "GLN"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value 1..1 MS
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value ^short = "equals SBDH/Receiver/Identifier"
//source
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueSet
* source.type.system = $EhmiDeliveryStatusSourceType
* source.observer.type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice
* source.observer.identifier 0..1 MS SU
* contained.id
// entity
* entity 2..
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "type.code"
* entity ^slicing.rules = #open
* entity.type.system = $EhmiDeliveryStatusEntityType
* entity.type.code from $EhmiDeliveryStatusEntityTypeValueSet
* entity contains
    ehmiMessage 1..1 and
    ehmiMessageEnvelope 0..1 and
    ehmiTransportEnvelope 0..1 and
    ehmiOrigMessage 0..1 and
    ehmiOrigTransportEnvelope 0..1 
//* entity[ehmiMessage]
* entity[ehmiMessage].what.identifier 1..1 MS SU
* entity[ehmiMessage].type.code 1..1 MS 
* entity[ehmiMessage].type.system 1..1 MS 
* entity[ehmiMessage].type.display 1..1 MS
//* entity[ehmiMessage].type.code from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiMessage].type.code = #ehmiMessage (exactly)
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 and
    ehmiStatisticalInfo 0..1 
* entity[ehmiMessage].detail 2..3

//* entity[ehmiMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiMessage].detail[ehmiMessageType].type.value = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType (exactly)
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType (exactly)
* entity[ehmiMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageType].valueString ^short = "equals 'SBDH/DocumentIdentification/Standard/[value]' e.g. homecareobservation-message"
//* entity[ehmiMessage].detail[ehmiMessageType].type.code from $MedComMessageDefinitionUriVS
//* entity[ehmiMessage].detail[ehmiMessageType].type.system = $MedComMessageDefinitionUri

//* entity[ehmiMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiMessage].detail[ehmiMessageVersion].type.value = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString ^short = "equals 'SBDH/DocumentIdentification/TypeVersion/[value]' e.g. 1.0"

//* entity[ehmiMessage].detail[ehmiStatisticalInfo].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
//* entity[ehmiMessage].detail[ehmiStatisticalInfo].type.value = $EhmiDeliveryStatusEntityDetailType#ehmiStatisticalInfo (exactly)
* entity[ehmiMessage].detail[ehmiStatisticalInfo].type = #ehmiStatisticalInfo (exactly)
* entity[ehmiMessage].detail[ehmiStatisticalInfo].valueString 1..1
* entity[ehmiMessage].detail[ehmiStatisticalInfo].valueString ^short = "equals 'MCM:' + SBDH/DocumentIdentification/Standard/[value]+'|'+SBDH/DocumentIdentification/TypeVersion/[value]+#[Postfix values]"
//* entity[ehmiMessageEnvelope]
* entity[ehmiMessageEnvelope].what.identifier 1..1 MS SU
* entity[ehmiMessageEnvelope].type.code 1..1 MS 
* entity[ehmiMessageEnvelope].type.system 1..1 MS 
* entity[ehmiMessageEnvelope].type.display 1..1 MS
* entity[ehmiMessageEnvelope].type.code = #ehmiMessageEnvelope (exactly)
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiMessageEnvelope].detail contains
    ehmiMessageEnvelopeType 0..1 //and
//    ehmiMessageVersion 0..1 
* entity[ehmiMessageEnvelope].detail 0..1
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type.value = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType (exactly)
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString 1..1
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString ^short = "equals 'SBDH/DocumentIdentification/Type/[value]' e.g. Bundle"
//* entity[ehmiTransportEnvelope]
* entity[ehmiTransportEnvelope].what.identifier 1..1 MS SU
* entity[ehmiTransportEnvelope].type.code 1..1 MS
* entity[ehmiTransportEnvelope].type.system 1..1 MS 
* entity[ehmiTransportEnvelope].type.display 1..1 MS
//* entity[ehmiTransportEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
//* entity[ehmiTransportEnvelope].type = #ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.code = #ehmiTransportEnvelope (exactly)
* entity[ehmiTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiTransportEnvelope].type.display = "Transport Envelope"
* entity[ehmiTransportEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open 
  * ^short = "something short"
* entity[ehmiTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiTransportEnvelope].detail 0..2
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString 1..1
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString ^short = "= 'SBDH'"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString 1..1
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString ^short = "equals SBDH/HeaderVersion/[value] e.g. 1.2"
//* entity[ehmiOrigMessage]
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type.code 1..1 MS
* entity[ehmiOrigMessage].type.system 1..1 MS 
* entity[ehmiOrigMessage].type.display 1..1 MS
//* entity[ehmiOrigMessage].type from $EhmiDeliveryStatusEntityTypeValueSet
//* entity[ehmiOrigMessage].type = #ehmiOrigMessage
* entity[ehmiOrigMessage].type.code = #ehmiOrigMessage (exactly)
* entity[ehmiOrigMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigMessage].type.display = "Original Message"
* entity[ehmiOrigMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open  
  * ^short = "something short"
* entity[ehmiOrigMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiOrigMessage].detail 2..2
* entity[ehmiOrigMessage].detail[ehmiMessageType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString 1..1
//* entity[ehmiOrigTransportEnvelope]
* entity[ehmiOrigTransportEnvelope].what.identifier 1..1 MS SU
* entity[ehmiOrigTransportEnvelope].type.code 1..1 MS
* entity[ehmiOrigTransportEnvelope].type.system 1..1 MS 
* entity[ehmiOrigTransportEnvelope].type.display 1..1 MS
//* entity[ehmiOrigTransportEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
//* entity[ehmiOrigTransportEnvelope].type = #ehmiOrigTransportEnvelope
* entity[ehmiOrigTransportEnvelope].type.code = #ehmiOrigTransportEnvelope (exactly)
* entity[ehmiOrigTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigTransportEnvelope].type.display = "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
  * ^short = "something short"
* entity[ehmiOrigTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiOrigTransportEnvelope].detail 0..2
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType (exactly)
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString 1..1
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion (exactly)
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString 1..1

Extension: EdsOtherId
Id: eds-otherId
Title: "AuditEvent.agent other identifiers"
Description: "Carries other identifiers that are known for an agent."
* ^context[+].type = #element
* ^context[=].expression = "AuditEvent.agent"
* value[x] only Identifier
* valueIdentifier.type 1..1
* valueIdentifier.value 1..1

Invariant: uuid
Description: "General UUID expression"
Severity: #error
Expression: "value.matches('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"
