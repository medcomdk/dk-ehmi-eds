Instance: 02.1-EDS_PDS_Create-MSH-Sender-msg-received
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
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
* contained[+] = s-02-MSH-Sender
* id = "EDS-PDS-02.1"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"
* subtype = $EdsSubtypes#msg-received "Message received"
* recorded = "2025-04-01T00:00:03.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"

* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"

* source.observer = Reference(Device/s-02-MSH-Sender)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

Instance: 02.2-EDS_PDS_Create-MSH-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatus
Description: "An instance of an EdsPatientDeliveryStatus.
- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an MSH
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
* contained[+] = s-02-MSH-Sender
* id = "EDS-PDS-02.2"
* type = $EhmiDeliveryStatusTypes#ehmiMessaging "EHMI messaging event"

* subtype = $EdsSubtypes#msg-sent "Message sent"
* recorded = "2025-04-01T00:00:04.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0

* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who = Reference(Organization/EER.SOR.HI-AAR-Kommune.937961000016000)
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"

* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who = Reference(Organization/LaegerneStjernepladsen.8200.AarhusN.698141000016008)
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"

* source.observer = Reference(Device/s-02-MSH-Sender)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"

* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH1234567890"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
