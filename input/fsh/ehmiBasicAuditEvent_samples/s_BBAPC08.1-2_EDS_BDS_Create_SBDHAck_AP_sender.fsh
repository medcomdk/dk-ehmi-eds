Instance: EDS_BDS_Create-08.1-SBDHAck-AP-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatusCreate
Description: "An example of an EdsBasicDeliveryStatusCreate containing an SBDH Acknowledgment for an AP in a received status"
* id = "EBAPC08.1"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EHMIAuditEventSubTypes#msg-received
* subtype[ehmiSubType].system = $EHMIAuditEventSubTypes
* recorded = "2023-10-01T00:00:11.500+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "MedCom Messaging Shipping Status (MMSS)"
* agent[server].requestor = false
* agent[server].who.type = $AuditEventAgentWhoTypes#110153
* agent[server].who.identifier.value = "MMSS1234"
* agent[server].network.address = "http://shippingstatus.medcom.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender
* agent[ehmiSender].name = "Løgten Lægehus"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN12345"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN1234"
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EHMIAuditEventSourceType#AP
* source.type.system = $EHMIAuditEventSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG3456789012"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV3456789012"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
// OrigMessage
* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EHMIAuditEventEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"
// OrigEnvelope
* entity[ehmiOrigEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiOrigEnvelope].type = $EHMIAuditEventEntityType#ehmiOrigEnvelope
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

Instance: EdsBasicDeliveryStatusCreate-08.2-SBDHAck-AP-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatusCreate
Description: "An example of an EdsBasicDeliveryStatusCreate containing an SBDH Acknowledgment for an AP in a sent status"
* id = "EBAPC08.2"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EHMIAuditEventSubTypesValueset#msg-sent
* subtype[ehmiSubType].system = $EHMIAuditEventSubTypes
* recorded = "2023-10-01T00:00:12.501+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "MedCom Messaging Shipping Status (MMSS)"
* agent[server].requestor = false
* agent[server].who.type = $AuditEventAgentWhoTypes#110153
* agent[server].who.identifier.value = "MMSS1234"
* agent[server].network.address = "http://shippingstatus.medcom.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender
* agent[ehmiSender].name = "Løgten Lægehus"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN12345"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver
* agent[ehmiReceiver].name = "Aarhus Kommune"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN1234"
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EHMIAuditEventSourceType#AP
* source.type.system = $EHMIAuditEventSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
//* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
//* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG3456789012"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "SBDH_Ack"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV3456789012"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
// OrigMessage
* entity[ehmiOrigMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiOrigMessage].type = $EHMIAuditEventEntityType#ehmiOrigMessage
* entity[ehmiOrigMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiOrigMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiOrigMessage].detail[ehmiMessageVersion].valueString = "1.0"
// OrigEnvelope
* entity[ehmiOrigEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiOrigEnvelope].type = $EHMIAuditEventEntityType#ehmiOrigEnvelope
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiOrigEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
