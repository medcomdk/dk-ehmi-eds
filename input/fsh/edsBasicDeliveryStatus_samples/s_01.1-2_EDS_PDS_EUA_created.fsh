Instance: 001.1-EDS_PDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = s-01-EUA-Sender
* id = "EDS-PDS-01.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype[msg-created-and-sent] = $EdsSubtypesCS#msg-created-and-sent "Message created and sent"
* recorded = "2025-04-01T00:00:01.000+02:00" 
//* outcome = $EhmiDeliveryStatusOutcome#0
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"

* agent[ehmiSender].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"
// ehmiReceiver
* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"
// source
* source.observer = Reference(Device/s-01-EUA-Sender)
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
/* source.observer.identifier.value = "s-01-EUA-Sender"
* source.observer.reference = "Device/s-01-EUA-Sender"
* source.observer.display = "EUA (End-user Application)"
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"
*/
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiPatient].type.display = "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType

* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
// AuditEvent​.entity[1]​.detail[1]​.type (l171​/c42)	error	The property 'value' is invalid
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// MessageEnvelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

Instance: 001.2-EDS_PDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = s-01-EUA-Sender
* id = "EDS-PDS-01.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
//* subtype[msg-sent] = $EdsSubtypesCS#msg-sent "Message sent"
//* subtype[msg-sent].system = $EdsSubtypes
* subtype[msg-sent] = $EdsSubtypesCS#msg-sent "Message sent"
* recorded = "2025-04-01T00:00:02.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"

* agent[ehmiSender].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"
// ehmiReceiver
* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"
// source
* source.observer = Reference(Device/s-01-EUA-Sender)
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
/* source.observer.identifier.value = "s-01-EUA-Sender"
* source.observer.reference = "Device/s-01-EUA-Sender"
* source.observer.display = "EUA (End-user Application)"
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"
*/
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
