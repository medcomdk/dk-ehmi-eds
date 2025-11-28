Profile: EdsBasicDeliveryStatus
Parent: AuditEvent
Description: "
EdsBasicDeliveryStatus is used to define the basic delivery status reporting for EDS from an EDS Client to the EDS Server.

A basic EdsBasicDeliveryStatus is based on the AuditEvent profile for and is submitted when a EHMI Core Messaging transaction 
from one station in the messageflow to another station happens successfully.

EdsBasicDeliveryStatus is only used when a Patient entity is not required, for instance for delivery status reporting of Acknowledgements. 
The EdsBasicDeliveryStatus does not have a Patient subject or is otherwise associated with a Patient. 
When the message transaction is Patient specific then EdsPatientDeliveryStatus is used.

When successfully submitted from an EDS Client to the EDS Server then the recorded EdsBasicDeliveryStatus has conformed to the profile otherwise it would 
not have a successful outcome and the EDS Client will receive an OperationOutcome indicating the failure.
" 
* insert Metadata
* id MS SU
* type MS SU
* type from $EhmiDeliveryStatusTypesValueSet

* subtype 1..1 MS 
  * code 1..1
  * system 1..1
* subtype from $EdsSubtypesVS

* action 1..1
* action = http://hl7.org/fhir/audit-event-action#C
* period 0..0
* outcome 1..1 MS SU
* outcome from $EhmiDeliveryStatusOutcomeValueSet
* outcomeDesc 0..0
* purposeOfEvent 0..0
* agent.extension contains eds-otherId named GLNId 0..* MS
* agent.extension[GLNId].valueIdentifier.value 1..1
* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent contains
    ehmiSender 1..1 and
    ehmiReceiver 1..1 
* agent 2..4
* agent.type from $EhmiDeliveryStatusParticipationRoleTypeValueSet
* agent[ehmiSender].name 0..1 MS 
* agent[ehmiSender].type 1..1 MS 
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who 1..1 MS
* agent[ehmiSender].who only Reference(Organization)
* agent[ehmiSender].who.identifier 1..1 MS SU
* agent[ehmiSender].who.identifier ^short = "equals SBDH/BusinessScope/Scope[Type=Sender]/InstanceIdentifier"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].extension[GLNId].valueIdentifier.type ^short = "GLN"
* agent[ehmiSender].extension[GLNId].valueIdentifier.value ^short = "equals SBDH/Sender/Identifier"
* agent[ehmiReceiver].name 0..1 MS
* agent[ehmiReceiver].type 1..1 MS
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who 1..1 MS
* agent[ehmiReceiver].who only Reference(Organization)
* agent[ehmiReceiver].who.identifier 1..1 MS SU
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type ^short = "GLN"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value ^short = "equals SBDH/Receiver/Identifier"

* source.observer 1..1 
* source.observer only Reference(Device)
* source.type 1..1 MS 
* source.type from $EhmiDeliveryStatusSourceTypeValueSet
* source.type.system = $EhmiDeliveryStatusSourceType
* source.observer.type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice
* source.observer.identifier 0..1 MS SU

* entity 2..
* entity.what.identifier 1..1 MS SU
* entity.detail.value[x] only string
* entity.detail.valueString 1..1

* entity.type 1..1 MS
* entity.type.code 1..1
* entity.type.system 1..1
* entity.type.display 1..1

* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #open
* entity.type from $EhmiDeliveryStatusEntityTypeValueSet
* entity.type.system = $EhmiDeliveryStatusEntityType
* entity contains
    ehmiMessage 1..1 and
    ehmiMessageEnvelope 0..1 and
    ehmiTransportEnvelope 0..1 and
    ehmiOrigMessage 0..1 and
    ehmiOrigTransportEnvelope 0..1 

* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #closed 
* entity[ehmiMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 and
    ehmiStatisticalInfo 0..1 
* entity[ehmiMessage].detail 2..3

* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType (exactly)
* entity[ehmiMessage].detail[ehmiMessageType].valueString ^short = "equals 'SBDH/DocumentIdentification/Standard/[value]' e.g. homecareobservation-message"

* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion (exactly)
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString ^short = "equals 'SBDH/DocumentIdentification/TypeVersion/[value]' e.g. 1.1"

* entity[ehmiMessage].detail[ehmiStatisticalInfo].type = #ehmiStatisticalInfo (exactly)
* entity[ehmiMessage].detail[ehmiStatisticalInfo].valueString ^short = "equals 'MCM:' + SBDH/DocumentIdentification/Standard/[value]+'|'+SBDH/DocumentIdentification/TypeVersion/[value]+#[Postfix values]"

* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiMessageEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open
* entity[ehmiMessageEnvelope].detail contains
    ehmiMessageEnvelopeType 0..1 
* entity[ehmiMessageEnvelope].detail 0..1
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType (exactly)
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString ^short = "equals 'SBDH/DocumentIdentification/Type/[value]' e.g. Bundle"

* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiTransportEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed
* entity[ehmiTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiTransportEnvelope].detail 0..2
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString ^short = "= 'SBDH'"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion (exactly)
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString ^short = "equals SBDH/HeaderVersion/[value] e.g. 1.2"

* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed
* entity[ehmiOrigMessage].detail contains
    ehmiMessageType 1..1 and
    ehmiMessageVersion 1..1 
* entity[ehmiOrigMessage].detail 2..2
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = #ehmiMessageType (exactly)
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion (exactly)

* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #closed
* entity[ehmiOrigTransportEnvelope].detail contains
    ehmiTransportEnvelopeType 0..1 and
    ehmiTransportEnvelopeVersion 0..1
* entity[ehmiOrigTransportEnvelope].detail 0..2
* entity[ehmiOrigTransportEnvelope].detail.type from $EhmiDeliveryStatusEntityDetailTypeValueSet
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType (exactly)
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion (exactly)

Extension: EdsOtherId
Id: eds-otherId
Title: "AuditEvent.agent other identifiers"
Description: "Carries other identifiers that are known for an agent."
* ^context[+].type = #element
* ^context[=].expression = "AuditEvent.agent"
* value[x] only Identifier
* valueIdentifier.type 1..1
* valueIdentifier.type from $EhmiDeliveryStatusAgentWhoIdentifierTypesValueset
* valueIdentifier.value 1..1 MS