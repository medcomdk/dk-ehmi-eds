
RuleSet: ehmiPatient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"

RuleSet: ehmiSender-HCO
* agent[ehmiSender].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.identifier.value = "937961000016000"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-1234"

RuleSet: ehmiSender-ACK
* agent[ehmiSender].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiSender].who.identifier.value = "698141000016008"
* agent[ehmiSender].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[GLNId].valueIdentifier.value = "GLN-12345"

RuleSet: ehmiSender-HCO-SDBHAck
* insert ehmiSender-ACK

RuleSet: ehmiSender-ACK-SDBHAck
* insert ehmiSender-HCO

RuleSet: ehmiReceiver-HCO
* agent[ehmiReceiver].name = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who.display = "Lægerne Stjernepladsen I/S"
* agent[ehmiReceiver].who.identifier.value = "698141000016008"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-12345"

RuleSet: ehmiReceiver-ACK
* agent[ehmiReceiver].name = "Aarhus Kommune - Sundhed og Omsorg"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].who.display = "Aarhus Kommune"
* agent[ehmiReceiver].who.identifier.value = "937961000016000"
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[GLNId].valueIdentifier.value = "GLN-1234"

RuleSet: ehmiReceiver-HCO-SBDHAck
* insert ehmiReceiver-ACK

RuleSet: ehmiReceiver-ACK-SBDHAck
* insert ehmiReceiver-HCO

RuleSet: ehmiMessage-Body
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType

RuleSet: ehmiMessage-HCO
* insert ehmiMessage-Body
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.1"

RuleSet: ehmiMessage-ACK
* insert ehmiMessage-Body
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "2.0"

RuleSet: ehmiMessage-SBDHAck-Body
* insert ehmiMessage-Body
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH-Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.1"

RuleSet: ehmiMessage-HCO-SBDHAck
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* insert ehmiMessage-SBDHAck-Body

RuleSet: ehmiMessage-ACK-SBDHAck
* entity[ehmiMessage].what.identifier.value = "Ack1234567890"
* insert ehmiMessage-SBDHAck-Body

RuleSet: ehmiOrigMessage-HCO
* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.1"

RuleSet: ehmiOrigMessage-Ack
* entity[ehmiOrigMessage].what.identifier.value = "Ack1234567890"
* entity[ehmiOrigMessage].type = $EhmiDeliveryStatusEntityType#ehmiOrigMessage "Original Message"
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "Acknowledgement"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"

RuleSet: ehmiMessage-SBDHAck
* entity[ehmiMessage].what.identifier.value = "SBDHAck1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = #ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = #ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

RuleSet: ehmiMessageEnvelope-Body
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

RuleSet: ehmiMessageEnvelope-HCO
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* insert ehmiMessageEnvelope-Body

RuleSet: ehmiMessageEnvelope-Ack
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV2345678901"
* insert ehmiMessageEnvelope-Body

RuleSet: ehmiOrigMessageEnvelope-HCO
* entity[ehmiOrigMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiOrigMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope "Message Envelope"
* entity[ehmiOrigMessageEnvelope].detail[ehmiMessageEnvelopeType].type = #ehmiMessageEnvelopeType
* entity[ehmiOrigMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

RuleSet: ehmiTransportEnvelope-Body
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope "Transport Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

RuleSet: ehmiTransportEnvelope-HCO
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH-HCO-1234567890"
* insert ehmiTransportEnvelope-Body

RuleSet: ehmiTransportEnvelope-Ack
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH-ACK-1234567890"
* insert ehmiTransportEnvelope-Body

RuleSet: ehmiTransportEnvelope-HCO-SBDHAck
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH-SBDHACK-1234567890"
* insert ehmiTransportEnvelope-Body

RuleSet: ehmiTransportEnvelope-ACK-SBDHAck
* entity[ehmiTransportEnvelope].what.identifier.value = "SBDH-SBDHACK-1234567890"
* insert ehmiTransportEnvelope-Body

RuleSet: ehmiOrigTransportEnvelope-Body
* entity[ehmiOrigTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiOrigTransportEnvelope "Original Transport Envelope"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].type = #ehmiTransportEnvelopeType
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = #ehmiTransportEnvelopeVersion
* entity[ehmiOrigTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

RuleSet: ehmiOrigTransportEnvelope-HCO
* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH-HCO-1234567890"
* insert ehmiMessageEnvelope-Body

RuleSet: ehmiOrigTransportEnvelope-Ack
* entity[ehmiOrigTransportEnvelope].what.identifier.value = "SBDH-ACK-1234567890"
* insert ehmiMessageEnvelope-Body


//RuleSet: ehmiOrigTransportEnvelope-HCO

// Devices
RuleSet: KvalitetsIT-AP
* source.observer = Reference(Device/KvalitetsIT-AP)
//* source.observer = Reference(Device/https://build.fhir.org/ig/medcomdk/dk-ehmi-eer/Device-EerDeviceAP-KvalitetsItAP)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

RuleSet: MultiMed-AP
* source.observer = Reference(Device/MultiMed-AP)
* source.type = $EhmiDeliveryStatusSourceType#AP "AP (Access Point)"

RuleSet: MultiMed-MSH
* source.observer = Reference(Device/MultiMed-MSH)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

RuleSet: Cura-MSH
* source.observer = Reference(Device/Cura-MSH)
* source.type = $EhmiDeliveryStatusSourceType#MSH "MSH (Application Server)"

RuleSet: Cura-EUA
* source.observer = Reference(Device/Cura-EUA)
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"

RuleSet: EGClinea-EUA
* source.observer = Reference(Device/EGClinea-EUA)
* source.type = $EhmiDeliveryStatusSourceType#EUA "EUA (End-user Application)"
