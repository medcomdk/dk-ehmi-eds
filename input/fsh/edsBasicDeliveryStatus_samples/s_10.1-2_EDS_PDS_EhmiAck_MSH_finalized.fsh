Instance: 010.1-EDS_BDS_Create-SBDHAck-MSH-Receiver-msg-recieved-and-finalized
InstanceOf: EdsBasicDeliveryStatus
Description: "An instance of an EdsBasicDeliveryStatus containing an SBDH Acknowledgement for a MSH in a create status
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
- ehmiSubType = msg-recieved-and-finalized
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
* contained[+] = Cura-MSH
* id = "EDS-BDS-10.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received-and-finalized "Message received and finalized"
* recorded = "2025-11-01T00:00:14.501+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* insert ehmiSender-HCO-SDBHAck
* insert ehmiReceiver-HCO-SBDHAck
* insert Cura-MSH
* insert ehmiMessage-HCO-SBDHAck
* insert ehmiTransportEnvelope-HCO-SBDHAck
* insert ehmiOrigMessage-HCO
* insert ehmiOrigTransportEnvelope-HCO
