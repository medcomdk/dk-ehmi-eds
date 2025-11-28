Instance: 019.1-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-recieved
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- * insert ehmiOrigMessage-HCO
 = MSG1234567890
    - * insert ehmiOrigMessage-HCO
Type = HomeCareObservation
    - * insert ehmiOrigMessage-HCO
Version = 1.0
- ehmiOrigTransportEnvelope = ENV2345678901
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = KvalitetsIT-AP
* id = "EDS-BDS-19.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:22.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-ACK-SDBHAck
* insert ehmiReceiver-ACK-SBDHAck
* insert KvalitetsIT-AP
* insert ehmiMessage-ACK-SBDHAck
* insert ehmiTransportEnvelope-ACK-SBDHAck
* insert ehmiOrigMessage-Ack
* insert ehmiOrigTransportEnvelope-Ack

Instance: 019.2-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for an AP Receiver in a sent status"
* contained[+] = KvalitetsIT-AP
* id = "EDS-BDS-19.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:23.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-ACK-SDBHAck
* insert ehmiReceiver-ACK-SBDHAck
* insert KvalitetsIT-AP
* insert ehmiMessage-ACK-SBDHAck
* insert ehmiTransportEnvelope-ACK-SBDHAck
* insert ehmiOrigMessage-Ack
* insert ehmiOrigTransportEnvelope-Ack
