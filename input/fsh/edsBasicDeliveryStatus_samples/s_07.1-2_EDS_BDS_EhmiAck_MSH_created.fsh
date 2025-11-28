Instance: 07.1-EDS_BDS_Create-SBDHAck-MSH-Sender-msg-created-and-sent
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-created-and-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Lægerne Stjernepladsen I/S
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG3456789012
    - ehmiMessageType = SBDHAck
    - ehmiMessageVersion = 1.0
- ehmiOrigTransportEnvelope = ENV3456789012
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
- * insert ehmiOrigMessage-HCO
 = MSG1234567890
    - * insert ehmiOrigMessage-HCO
Type = HomeCareObservation
    - * insert ehmiOrigMessage-HCO
Version = 1.0
- ehmiOrigTransportEnvelope = ENV1234567890
    - ehmiOrigEnvelopeType = SBDH
    - ehmiOrigEnvelopeVersion = 2.0
"
* contained[+] = MultiMed-MSH
* id = "EDS-BDS-07.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-created-and-sent "Message created and sent"
* recorded = "2025-11-01T00:00:09.500+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-HCO-SDBHAck
* insert ehmiReceiver-HCO-SBDHAck
* insert MultiMed-MSH
* insert ehmiMessage-HCO-SBDHAck
* insert ehmiTransportEnvelope-HCO-SBDHAck
* insert ehmiOrigMessage-HCO
* insert ehmiOrigTransportEnvelope-HCO
