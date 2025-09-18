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
* insert Metadata
* id 1..
* id MS SU
* type MS SU
//* type.system = "http://terminology.hl7.org/CodeSystem/audit-event-type"
//* type.code = http://terminology.hl7.org/CodeSystem/audit-event-type#object
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype 1..1 MS SU
* subtype.code from $EdsSubtypesVS
// * subtype.system = $EdsSubtypes // TODO: AT - this is incorrect, as it is a ValueSet, not a CodeSystem uri
* subtype ^slicing.discriminator.type = #value
* subtype ^slicing.discriminator.path = "$this"
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
* subtype[msg-created-and-sent] from $EdsSubtypesVS
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
* agent.extension[GLNId].valueIdentifier.value 1..1 MS //TODO: the 1..1 is already defined in the extension, perhaps we should move the MS flag to the extension too?
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 
* agent 2..4
//* ^agent[ehmiSender]
* agent[ehmiSender].name 0..1 MS 
* agent[ehmiSender].type 1..1 MS 
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.identifier ^short = "equals SBDH/BusinessScope/Scope[Type=Sender]/InstanceIdentifier"
//* agent[ehmiSender].who.type 0..1 MS SU
//* agent[ehmiSender].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueset
//* agent[ehmiSender].who.type ^short = "SOR"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.type ^short = "GLN"
* agent[ehmiSender].extension[GLNId].valueIdentifier.value ^short = "equals SBDH/Sender/Identifier"
//* agent[ehmiReceiver]
* agent[ehmiReceiver].name 1..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
//* agent[ehmiReceiver].who.type 0..1 MS SU
//* agent[ehmiReceiver].who.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueset
//* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR 
//* agent[ehmiReceiver].who.type  ^short = "SOR"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type ^short = "GLN"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value ^short = "equals SBDH/Receiver/Identifier"
//source
* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueSet
* source.type.system = $EhmiDeliveryStatusSourceType
* source.observer.type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice // TODO: I think this should be fixed for Device form FHIR codes, not the 'ehmiDevice' code
* source.observer.identifier 0..1 MS SU
* contained.id
// entity
* entity 2..
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "type.code"
* entity ^slicing.rules = #open
* entity.type from $EhmiDeliveryStatusEntityTypeValueSet
* entity.type.system = $EhmiDeliveryStatusEntityType
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
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail ^slicing.discriminator.type = #value
* entity[ehmiMessage].detail ^slicing.discriminator.path = type
* entity[ehmiMessage].detail ^slicing.rules = #open // TODO based on card of 2...3 i would say this is a closed slicing?
* entity[ehmiMessage].detail ^short = "something short"
* entity[ehmiMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 and
    ehmiStatisticalInfo 0..1 
* entity[ehmiMessage].detail 2..3
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType (exactly)
* entity[ehmiMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageType].valueString ^short = "equals 'SBDH/DocumentIdentification/Standard/[value]' e.g. homecareobservation-message"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString 1..1
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString ^short = "equals 'SBDH/DocumentIdentification/TypeVersion/[value]' e.g. 1.0"
* entity[ehmiMessage].detail[ehmiStatisticalInfo].type = #ehmiStatisticalInfo (exactly)
* entity[ehmiMessage].detail[ehmiStatisticalInfo].valueString 1..1
* entity[ehmiMessage].detail[ehmiStatisticalInfo].valueString ^short = "equals 'MCM:' + SBDH/DocumentIdentification/Standard/[value]+'|'+SBDH/DocumentIdentification/TypeVersion/[value]+#[Postfix values]"
//* entity[ehmiMessageEnvelope]
* entity[ehmiMessageEnvelope].what.identifier 1..1 MS SU
* entity[ehmiMessageEnvelope].type.code 1..1 MS 
* entity[ehmiMessageEnvelope].type.system 1..1 MS 
* entity[ehmiMessageEnvelope].type.display 1..1 MS
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessageEnvelope].detail ^slicing.discriminator.type = #value
* entity[ehmiMessageEnvelope].detail ^slicing.discriminator.path = type
* entity[ehmiMessageEnvelope].detail ^slicing.rules = #open 
* entity[ehmiMessageEnvelope].detail ^short = "something short"
* entity[ehmiMessageEnvelope].detail contains
    ehmiMessageEnvelopeType 0..1 //and
//    ehmiMessageVersion 0..1 
* entity[ehmiMessageEnvelope].detail 0..1
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType (exactly)
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString 1..1
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString ^short = "equals 'SBDH/DocumentIdentification/Type/[value]' e.g. Bundle"
//* entity[ehmiTransportEnvelope]
* entity[ehmiTransportEnvelope].what.identifier 1..1 MS SU
* entity[ehmiTransportEnvelope].type.code 1..1 MS
* entity[ehmiTransportEnvelope].type.system 1..1 MS 
* entity[ehmiTransportEnvelope].type.display 1..1 MS
//* entity[ehmiTransportEnvelope].type from $EhmiDeliveryStatusEntityTypeValueSet
//* entity[ehmiTransportEnvelope].type = #ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiTransportEnvelope].detail ^slicing.discriminator.type = #value
* entity[ehmiTransportEnvelope].detail ^slicing.discriminator.path = type
* entity[ehmiTransportEnvelope].detail ^slicing.rules = #open 
* entity[ehmiTransportEnvelope].detail ^short = "something short"
* entity[ehmiTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiTransportEnvelope].detail 0..2
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString 1..1
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString ^short = "= 'SBDH'"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString 1..1
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString ^short = "equals SBDH/HeaderVersion/[value] e.g. 1.2"
//* entity[ehmiOrigMessage]
* entity[ehmiOrigMessage].what.identifier 1..1 MS SU
* entity[ehmiOrigMessage].type.code 1..1 MS
* entity[ehmiOrigMessage].type.system 1..1 MS 
* entity[ehmiOrigMessage].type.display 1..1 MS
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigMessage].detail ^slicing.discriminator.type = #value
* entity[ehmiOrigMessage].detail ^slicing.discriminator.path = type
* entity[ehmiOrigMessage].detail ^slicing.rules = #open  
* entity[ehmiOrigMessage].detail ^short = "something short"
* entity[ehmiOrigMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiOrigMessage].detail 2..2

* entity[ehmiOrigMessage].detail[ehmiMessageType].type = #ehmiMessageType (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString 1..1
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString 1..1
//* entity[ehmiOrigTransportEnvelope]
* entity[ehmiOrigTransportEnvelope].what.identifier 1..1 MS SU
* entity[ehmiOrigTransportEnvelope].type.code 1..1 MS
* entity[ehmiOrigTransportEnvelope].type.system 1..1 MS 
* entity[ehmiOrigTransportEnvelope].type.display 1..1 MS
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigTransportEnvelope].detail ^slicing.discriminator.type = #value
* entity[ehmiOrigTransportEnvelope].detail ^slicing.discriminator.path = type
* entity[ehmiOrigTransportEnvelope].detail ^slicing.rules = #open //#closed eller #open 
* entity[ehmiOrigTransportEnvelope].detail ^short = "something short"
* entity[ehmiOrigTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiOrigTransportEnvelope].detail 0..2
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType (exactly)
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString 1..1
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion (exactly)
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
