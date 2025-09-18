Instance: 012.1-EDS_BDS_Create-MSH-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-received
- ehmiReceiver = Aarhus Kommune
- ehmiSender = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV2345678901
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = s-05-MSH-Receiver
* id = "EDS-BDS-12.1"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-04-01T00:00:03.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value = "GLN-12345"
// ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value = "GLN-1234"
// source
* source.observer = Reference(Device/s-05-MSH-Receiver)
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
* source.type.system = $EhmiDeliveryStatusSourceType

/* source.observer.identifier.value = "s-02-MSH-Sender"
* source.observer.reference = "Device/s-02-MSH-Sender"
* source.observer.display = "MSH (Message Service Handler)"
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "MSH (Application Server)"
*/

// Patient[0]
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
// Message[1]
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope[2]
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
// Transport Envelope[3]    
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiTransportEnvelope].type.display = "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

Instance: 012.2-EDS_BDS_Create-MSH-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-sent
- ehmiReceiver = Aarhus Kommune
- ehmiSender = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV2345678901
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = s-05-MSH-Receiver
* id = "EDS-BDS-12.2"
* type.code = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* type.system = $EhmiDeliveryStatusTypes
* type.display = "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-04-01T00:00:04.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// ehmiSender
* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId][gln].valueIdentifier.value = "GLN-12345"
// ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId][gln].valueIdentifier.value = "GLN-1234"
// source
* source.observer = Reference(Device/s-05-MSH-Receiver)
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
* source.type.system = $EhmiDeliveryStatusSourceType

/* source.observer.identifier.value = "s-02-MSH-Sender"
* source.observer.reference = "Device/s-02-MSH-Sender"
* source.observer.display = "MSH (Message Service Handler)"
* source.type.code = $EhmiDeliveryStatusSourceType#MSH
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "MSH (Application Server)"
*/
//* source.observer.type = $EhmiDeliveryStatusParticipationRoleType#ehmiDevice "Device"
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
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
// Transport Envelope 
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiTransportEnvelope].type.display = "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
