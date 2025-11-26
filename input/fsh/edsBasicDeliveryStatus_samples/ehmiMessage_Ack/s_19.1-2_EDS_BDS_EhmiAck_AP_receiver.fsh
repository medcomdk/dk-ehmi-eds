Instance: 019.1-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-recieved
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- ehmiOrigMessage = MSG1234567890
    - ehmiOrigMessageType = HomeCareObservation
    - ehmiOrigMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV2345678901
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-19.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-11-01T00:00:22.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender
* insert ehmiReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiMessage_SBDH_Ack

* insert ehmiTransportEnvelope_SBDH_Ack

* insert ehmiOrigMessage


* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

Instance: 019.2-EDS_BDS_Create-SBDHAck-AP-Receiver-msg-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for an AP Receiver in a sent status"
* contained[+] = s-03-AP-Sender
* id = "EDS-BDS-19.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-11-01T00:00:23.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender
* insert ehmiReceiver

* source.observer = Reference(Device/s-03-AP-Sender)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

* insert ehmiMessage_SBDH_Ack

* insert ehmiTransportEnvelope_SBDH_Ack

* insert ehmiOrigMessage


* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
