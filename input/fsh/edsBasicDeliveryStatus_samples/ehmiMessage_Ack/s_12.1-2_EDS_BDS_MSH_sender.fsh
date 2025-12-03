Instance: 012.1-EDS_BDS_Create-MSH-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = MultiMed-MSH
* id = "EDS-BDS-12.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:12.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert MultiMed-MSH
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiOrigMessage-HCO

Instance: 012.2-EDS_BDS_Create-MSH-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = MultiMed-MSH
* id = "EDS-BDS-12.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:13.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert MultiMed-MSH
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiTransportEnvelope-Ack
* insert ehmiOrigMessage-HCO
