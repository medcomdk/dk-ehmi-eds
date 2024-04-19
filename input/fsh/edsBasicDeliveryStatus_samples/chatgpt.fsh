Profile: EdsBasicDeliveryStatus
Parent: AuditEvent

Description: "
EdsBasicDeliveryStatus is used to define the basic status reporting for EDS from the EDS Client to the EDS Server.
EdsBasicDeliveryStatus is used when a Patient entity is not required, for instance for status reporting of Acknowledgments.
A basic EdsBasicDeliveryStatus based on the AuditEvent profile for when a EHMI Basic Delivery Status Messaging action happens successfully.
It is used when 
- the resource does not have a Patient subject or is otherwise associated with a Patient
  - when the resource is Patient specific then EdsPatientDeliveryStatus is used
- And the request is authorized
- When successful
  - Note a failure EdsBasicDeliveryStatus may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
  - Then the EdsBasicDeliveryStatus recorded will conform
" 


* ^url = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/EdsBasicDeliveryStatus"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsBasicDeliveryStatus.</div>"
* ^text.status = #additional
* ^contact[0].name = "MedCom"
* ^contact[=].telecom.value = "https://www.medcom.dk/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "OVI"
* ^contact[=].telecom.value = "ovi@medcom.dk"
* ^contact[=].telecom.system = #email
* ^status = #active
* ^publisher = "MedCom"
* ^date = "2024-04-01"
* ^copyright = "CC0-1.0"
* ^experimental = false

* type = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype[0].code = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusSubTypes#msg-created "Message created"
* action = http://hl7.org/fhir/audit-event-action#C
* outcome from http://medcomehmi.dk/ig/dk-ehmi-eds/ValueSet/EhmiDeliveryStatusOutcomeValueSet#success

* agent[0]
  Coding[0].system = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusParticipationRoleType
  Coding[0].code = ehmiSender
  Coding[0].display = "Sender"
  who.identifier.system = http://example.org/gln
  who.identifier.value = "1234567890123"

* agent[1]
  Coding[0].system = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusParticipationRoleType
  Coding[0].code = ehmiReceiver
  Coding[0].display = "Receiver"
  who.identifier.system = http://example.org/gln
  who.identifier.value = "9876543210987"

* source.type = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusSourceType#exampleSourceType
* source.observer.reference = Device/exampleDevice

* entity[0]
  type = http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusEntityType#ehmiMessage
  what.identifier.system = http://example.org/messageIdentifier
  what.identifier.value = "ABC123"
  detail[0].type = ehmiMessageType
  detail[0].valueString = "homecareobservation-message"
  detail[1].type = ehmiMessageVersion
  detail[1].valueString = "1.0"