Instance: 08.1-EDS_BDS_Create-SBDHAck-AP-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing a SBDH Acknowledgement for a MSH in a create status"
* contained[+] = MultiMed-AP
* id = "EDS-BDS-08.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:10.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO-SDBHAck
* insert ehmiReceiver-HCO-SBDHAck
* insert MultiMed-AP
* insert ehmiMessage-HCO-SBDHAck
* insert ehmiTransportEnvelope-HCO-SBDHAck
* insert ehmiOrigMessage-HCO
* insert ehmiOrigTransportEnvelope-HCO

Instance: 08.2-EDS_BDS_Create-SBDHAck-AP-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing a SBDH Acknowledgement for a MSH in a create status"
* contained[+] = MultiMed-AP
* id = "EDS-BDS-08.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:11.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO-SDBHAck
* insert ehmiReceiver-HCO-SBDHAck
* insert MultiMed-AP
* insert ehmiMessage-HCO-SBDHAck
* insert ehmiTransportEnvelope-HCO-SBDHAck
* insert ehmiOrigMessage-HCO
* insert ehmiOrigTransportEnvelope-HCO
