Instance: 016.1-EDS_BDS_Create-BS-Receiver-msg-received-and-finalized
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-received-and-finalized
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* contained[+] = Cura-EUA
* id = "EDS-BDS-16.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:20.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-ACK
* insert ehmiReceiver-ACK
* insert Cura-EUA
* insert ehmiMessage-ACK
* insert ehmiMessageEnvelope-Ack
* insert ehmiOrigMessage-HCO

