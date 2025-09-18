Instance: 007.1-EDS_BDS_Create-SBDHAck-MSH-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgment for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-created-and-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- ehmiOrigMessage = MSG1234567890
    - ehmiOrigMessageType = HomeCareObservation
    - ehmiOrigMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV1234567890
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = s-05-MSH-Receiver
* id = "EDS-BDS-07.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypesCS#msg-created-and-sent "Message created and sent"
* recorded = "2025-04-01T00:00:09.500+02:00" 
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
* source.observer = Reference(Device/s-05-MSH-Receiver)
* source.type = $EhmiDeliveryStatusSourceType#MSH

/* source.observer.identifier.value = "s-05-MSH-Receiver"
* source.observer.reference = "Device/s-05-MSH-Receiver"
* source.observer.display = "MSH (Message Service Handler)"
* source.type = $EhmiDeliveryStatusSourceType#MSH
* source.type.display = "MSH (Application Server)"
*/
// Message
* entity[ehmiMessage].what.identifier.value = "MSG3456789012"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Transport Envelope 
* entity[ehmiTransportEnvelope].what.identifier.value = "ENV3456789012"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
// OrigMessage
* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"
// OrigMessageEnvelope
/* entity[ehmiOrigMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiOrigMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiOrigMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiOrigMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiOrigMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiOrigMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiOrigMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
*/
// OrigTransportEnvelope
* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH1234567890"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

/*
Instance: 007.2-EDS_BDS_Create-SBDHAck-MSH-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgment for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- ehmiOrigMessage = MSG1234567890
    - ehmiOrigMessageType = HomeCareObservation
    - ehmiOrigMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV1234567890
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = s-05-MSH-Receiver
* id = "EDS-BDS-07.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypesCS#msg-sent "Message sent"

* recorded = "2025-04-01T00:00:10.501+02:00" 
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
* source.observer.identifier.value = "s-05-MSH-Receiver"
* source.observer.reference = "Device/s-05-MSH-Receiver"
* source.observer.display = "MSH (Message Service Handler)"
* source.type = $EhmiDeliveryStatusSourceType#MSH
* source.type.display = "MSH (Application Server)"
// Message
* entity[ehmiMessage].what.identifier.value = "MSG3456789012"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Transport Envelope 
* entity[ehmiTransportEnvelope].what.identifier.value = "ENV3456789012"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
// OrigMessage
* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = $EhmiDeliveryStatusEntityMessageType#HomeCareObservation
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"
// OrigEnvelope
* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH1234567890"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
*/