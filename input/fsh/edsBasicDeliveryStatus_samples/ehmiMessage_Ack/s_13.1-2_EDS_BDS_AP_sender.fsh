Instance: 013.1-EDS_BDS_Create-AP-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV2345678901
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-13.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-04-01T00:00:05.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-12345"

* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-1234"

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

Instance: 013.2-EDS_BDS_Create-AP-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV2345678901
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-13.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-04-01T00:00:06.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-12345"

* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-1234"

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
