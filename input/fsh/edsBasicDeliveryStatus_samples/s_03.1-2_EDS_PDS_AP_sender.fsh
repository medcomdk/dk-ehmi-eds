Instance: 03.1-EDS_PDS_Create-AP-Sender-msg-received
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV1234567890
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = KvalitetsIT-AP
* id = "EDS-PDS-03.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:04.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert KvalitetsIT-AP
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO
* insert ehmiTransportEnvelope-HCO

Instance: 03.2-EDS_PDS_Create-AP-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV1234567890
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0
"
* contained[+] = KvalitetsIT-AP
* id = "EDS-PDS-03.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:05.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-HCO
* insert ehmiReceiver-HCO
* insert KvalitetsIT-AP
* insert ehmiPatient
* insert ehmiMessage-HCO
* insert ehmiMessageEnvelope-HCO
* insert ehmiTransportEnvelope-HCO