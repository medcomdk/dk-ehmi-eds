Instance: 018.1-EDS_BDS_Create-SBDHAck-AP-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = MultiMed-AP
* id = "EDS-BDS-18.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:20.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK-SDBHAck
* insert ehmiReceiver-ACK-SBDHAck
* insert MultiMed-AP
* insert ehmiMessage-ACK-SBDHAck
* insert ehmiTransportEnvelope-ACK-SBDHAck
* insert ehmiOrigMessage-Ack
* insert ehmiOrigTransportEnvelope-Ack

Instance: 018.2-EDS_BDS_Create-SBDHAck-AP-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = MultiMed-AP
* id = "EDS-BDS-18.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:21.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK-SDBHAck
* insert ehmiReceiver-ACK-SBDHAck
* insert MultiMed-AP
* insert ehmiMessage-ACK-SBDHAck
* insert ehmiTransportEnvelope-ACK-SBDHAck
* insert ehmiOrigMessage-Ack
* insert ehmiOrigTransportEnvelope-Ack
