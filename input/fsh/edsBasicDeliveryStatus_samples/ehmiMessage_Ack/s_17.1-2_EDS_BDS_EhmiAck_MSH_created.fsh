Instance: 017.1-EDS_BDS_Create-SBDHAck-MSH-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-created-and-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- ehmiOrigMessage = MSG1234567890
    - ehmiOrigMessageType = HomeCareObservation
    - ehmiOrigMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV2345678901
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = s-05-MSH-Receiver
* id = "EDS-BDS-17.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-04-01T00:00:09.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"

* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"

* source.observer = Reference(Device/s-05-MSH-Receiver)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

* entity[ehmiMessage].what.identifier.value = "MSG3456789012"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiTransportEnvelope].what.identifier.value = "ENV3456789012"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
