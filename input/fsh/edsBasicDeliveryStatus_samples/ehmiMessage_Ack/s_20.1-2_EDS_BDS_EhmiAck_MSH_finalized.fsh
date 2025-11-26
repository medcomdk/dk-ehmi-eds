Instance: 020.1-EDS_BDS_Create-SBDHAck-MSH-Receiver-msg-recieved-and-finalized
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-recieved-and-finalized
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
* contained[+] = s-02-MSH-Sender
* id = "EDS-BDS-20.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:24.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender
* insert ehmiReceiver

* source.observer = Reference(Device/s-02-MSH-Sender)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

* insert ehmiMessage_SBDH_Ack

* insert ehmiAckMessageEnvelope


* insert ehmiTransportEnvelope_SBDH_Ack

* insert ehmiOrigMessage


* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH2345678901"
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
