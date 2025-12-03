Instance: 020.1-EDS_BDS_Create-SBDHAck-MSH-Receiver-msg-recieved-and-finalized
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus."
* contained[+] = Cura-MSH
* id = "EDS-BDS-20.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:24.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-ACK-SDBHAck
* insert ehmiReceiver-ACK-SBDHAck
* insert Cura-MSH
* insert ehmiMessage-ACK-SBDHAck
* insert ehmiTransportEnvelope-ACK-SBDHAck
* insert ehmiOrigMessage-Ack
* insert ehmiOrigTransportEnvelope-Ack
