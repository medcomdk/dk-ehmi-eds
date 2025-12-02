Instance: 011.1-EDS_BDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = EGClinea-EUA
* id = "EDS-BDS-11.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-11-01T00:00:11.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0 "Success"

* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert EGClinea-EUA
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiOrigMessage-HCO

Instance: 011.2-EDS_BDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = EGClinea-EUA
* id = "EDS-BDS-11.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:12.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert EGClinea-EUA
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiOrigMessage-HCO
