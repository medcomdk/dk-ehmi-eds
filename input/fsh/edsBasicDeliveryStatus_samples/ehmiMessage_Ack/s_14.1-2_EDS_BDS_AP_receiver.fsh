Instance: 014.1-EDS_BDS_Create-AP-Receiver-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = KvalitetsIT-AP
* id = "EDS-BDS-14.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:16.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert KvalitetsIT-AP
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiTransportEnvelope-Ack
* insert ehmiOrigMessage-HCO

Instance: 014.2-EDS_BDS_Create-AP-Receiver-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = KvalitetsIT-AP
* id = "EDS-BDS-14.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:17.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert KvalitetsIT-AP
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiTransportEnvelope-Ack
* insert ehmiOrigMessage-HCO
