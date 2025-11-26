Instance: 06.1-EDS_PDS_Create-BS-Receiver-msg-received-and-finalized
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-received-and-finalized
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = s-06-EUA-Receiver
* id = "EDS-PDS-06.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:11.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender
* insert ehmiReceiver

* source.observer = Reference(Device/s-06-EUA-Receiver)
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"

* insert ehmiPatient
* insert ehmiMessage
* insert ehmiMessageEnvelope

