Instance: 011.1-EDS_BDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-01-EUA-Sender
* id = "EDS-BDS-11.1"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI messaging event"
* subtype[msg-created-and-sent].code = #msg-created-and-sent 
* subtype[msg-created-and-sent].display = "Message created and sent"
//* subtype[msg-created] = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2024-04-01T00:00:01.000+02:00" 
//* outcome = $EhmiDeliveryStatusOutcome#0
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
// ehmiSender
* agent[ehmiReceiver].name = "Aarhus Kommune"
* agent[ehmiReceiver].requestor = true
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
//* agent[ehmiReceiver].who = Reference(Organization/EHMI.SOR.OU-AAR-Kommune.1027201000016001)
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR1234"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value = "GLN-1234"
// ehmiReceiver
* agent[ehmiSender].name = "Løgten Lægehus"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiSender].who.identifier.value = "SOR12345"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "s-01-EUA-Sender"
* source.observer.reference = "Device/s-01-EUA-Sender"
* source.observer.display = "EUA (End-user Application)"
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "EUA (End-user Application)"
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
//* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
//* entity[ehmiPatient].type.display = "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
// AuditEvent​.entity[1]​.detail[0]​.type (l164​/c39)	error	The property 'value' is invalid
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
// AuditEvent​.entity[1]​.detail[1]​.type (l171​/c42)	error	The property 'value' is invalid
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// MessageEnvelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

Instance: 011.2-EDS_BDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-01-EUA-Sender
* id = "EDS-BDS-11.2"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI messaging event"
//* subtype[msg-sent] = $EdsSubtypes#msg-sent "Message sent"
//* subtype[msg-sent].system = $EdsSubtypes
* subtype[msg-sent].code = #msg-sent
* subtype[msg-sent].display = "Message sent"
* recorded = "2024-04-01T00:00:02.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune"
* agent[ehmiReceiver].requestor = true
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who.display = "Aarhus Kommune"
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR1234"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value = "GLN-1234"
// ehmiSender
* agent[ehmiSender].name = "Løgten Lægehus"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who.display = "Løgten Lægehus"
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiSender].who.identifier.value = "SOR12345"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "s-01-EUA-Sender"
* source.observer.reference = "Device/s-01-EUA-Sender"
* source.observer.display = "EUA (End-user Application)"
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "EUA (End-user Application)"
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope (Bundle)
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
