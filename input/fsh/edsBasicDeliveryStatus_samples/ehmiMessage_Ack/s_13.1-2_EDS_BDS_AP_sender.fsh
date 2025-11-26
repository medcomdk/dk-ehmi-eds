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
* recorded = "2025-11-01T00:00:14.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiAckMessage
* insert ehmiAckMessageEnvelope
* insert ehmiTransportEnvelope_Acknowledgement
* insert ehmiOrigMessage
* insert ehmiOrigTransportEnvelope

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
* recorded = "2025-11-01T00:00:15.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiAckMessage
* insert ehmiAckMessageEnvelope
* insert ehmiTransportEnvelope_Acknowledgement
* insert ehmiOrigMessage
* insert ehmiOrigTransportEnvelope
