Instance: 09.1-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-recieved
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
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
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-09.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:12.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiMessage_SBDH_Ack
* insert ehmiTransportEnvelope_SBDH_Ack
* insert ehmiOrigMessage
* insert ehmiOrigTransportEnvelope

Instance: 09.2-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for an AP Receiver in a sent status"
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-09.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:13.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiMessage_SBDH_Ack
* insert ehmiTransportEnvelope_SBDH_Ack
* insert ehmiOrigMessage
* insert ehmiOrigTransportEnvelope
