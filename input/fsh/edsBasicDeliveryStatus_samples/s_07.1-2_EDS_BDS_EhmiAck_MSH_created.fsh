Instance: 07.1-EDS_BDS_Create-SBDHAck-MSH-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing a SBDH Acknowledgement for a MSH in a create status"
* contained[+] = MultiMed-MSH
* id = "EDS-BDS-07.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-11-01T00:00:09.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO-SDBHAck
* insert ehmiReceiver-HCO-SBDHAck
* insert MultiMed-MSH
* insert ehmiMessage-HCO-SBDHAck
* insert ehmiTransportEnvelope-HCO-SBDHAck
* insert ehmiOrigMessage-HCO
* insert ehmiOrigTransportEnvelope-HCO
