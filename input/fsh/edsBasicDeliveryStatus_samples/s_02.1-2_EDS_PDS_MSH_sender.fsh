Instance: 02.1-EDS_PDS_Create-MSH-Sender-msg-received
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus."
* contained[+] = Cura-MSH
* id = "EDS-PDS-02.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:02.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert Cura-MSH
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO

Instance: 02.2-EDS_PDS_Create-MSH-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus."
* contained[+] = Cura-MSH
* id = "EDS-PDS-02.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:03.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert Cura-MSH
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO
* insert ehmiTransportEnvelope-HCO