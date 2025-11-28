Instance: 01.1-EDS_PDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created-and-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = Cura-EUA
* id = "EDS-PDS-01.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-11-01T00:00:01.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0 "Success"

* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert Cura-EUA
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO


Instance: 01.2-EDS_PDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = Cura-EUA
* id = "EDS-PDS-01.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:02.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert Cura-EUA
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO
