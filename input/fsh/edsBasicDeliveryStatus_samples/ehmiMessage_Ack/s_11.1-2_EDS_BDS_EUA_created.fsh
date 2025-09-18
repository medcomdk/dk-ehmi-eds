Instance: 011.1-EDS_BDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-06-EUA-Receiver
* id = "EDS-BDS-11.1"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypesCS#msg-created-and-sent "Message created and sent"
* recorded = "2025-04-01T00:00:01.000+02:00" 
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
// ehmiSender
* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender" 
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-12345"
// ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-1234"
// source
* source.observer = Reference(Device/s-06-EUA-Receiver)
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType

/* source.observer.identifier.value = "s-06-EUA-Receiver"
* source.observer.reference = "Device/s-06-EUA-Receiver"
* source.observer.display = "EUA (End-user Application)"
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"
*/
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
//* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
//* entity[ehmiPatient].type.display = "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// MessageEnvelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

Instance: 011.2-EDS_BDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-06-EUA-Receiver
* id = "EDS-BDS-11.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypesCS#msg-sent "Message sent"
* recorded = "2025-04-01T00:00:02.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender" 
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-12345"
// ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-1234"
// source
* source.observer.identifier.value = "s-06-EUA-Receiver"
* source.observer.reference = "Device/s-06-EUA-Receiver"
* source.observer.display = "EUA (End-user Application)"
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
