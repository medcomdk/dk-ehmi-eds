Instance: 011.1-EDS_BDS_Create-EUA-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-06-EUA-Receiver
* id = "EDS-BDS-11.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-11-01T00:00:11.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0 "Success"

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-06-EUA-Receiver)
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"

* insert ehmiAckMessage
* insert ehmiAckMessageEnvelope
* insert ehmiOrigMessage


Instance: 011.2-EDS_BDS_Create-EUA-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = Ack1234567890
- ehmiMessageType = Acknowledgement
- ehmiMessageVersion = 1.0
"
* contained[+] = s-06-EUA-Receiver
* id = "EDS-BDS-11.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:12.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiAckSender
* insert ehmiAckReceiver

* source.observer = Reference(Device/s-06-EUA-Receiver)
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"

* insert ehmiAckMessage
* insert ehmiAckMessageEnvelope
* insert ehmiOrigMessage


