Instance: 06.1-EDS_PDS_Create-EUA-Receiver-msg-received-and-finalized
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus."
* contained[+] = EGClinea-EUA
* id = "EDS-PDS-06.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:11.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert EGClinea-EUA
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO

