Instance: 019.1-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-recieved
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
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
Description: "An instance of an EdsBasicDeliveryStatus."
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
