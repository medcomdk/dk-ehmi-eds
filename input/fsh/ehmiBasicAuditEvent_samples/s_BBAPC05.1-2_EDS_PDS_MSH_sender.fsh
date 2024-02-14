Instance: EDS_PDS_Create-05.1-MSH-Sender-msg-received
InstanceOf: EdsBasicDeliveryStatusPatientCreate
Description: "An example of an EdsBasicDeliveryStatusPatientCreate."
* id = "EBAPC05.1"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EhmiDeliveryStatusSubTypes#msg-received
* subtype[ehmiSubType].system = $EhmiDeliveryStatusSubTypes
* recorded = "2023-10-01T00:00:09.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed MSH"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "MSH1234567"
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
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// source
* source.observer.identifier.value = "MSH1234567"
* source.type.code = $EhmiDeliveryStatusSourceType#AP
* source.type.system = $EhmiDeliveryStatusSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

Instance: EDS_PDS_Create-05.2-MSH-Sender-msg-sent
InstanceOf: EdsBasicDeliveryStatusPatientCreate
Description: "An example of an EdsBasicDeliveryStatusPatientCreate."
* id = "EBAPC05.2"
* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[ehmiSubType].code = $EhmiDeliveryStatusSubTypesValueset#msg-sent
* subtype[ehmiSubType].system = $EhmiDeliveryStatusSubTypes
* recorded = "2023-10-01T00:00:10.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed MSH"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "MSH1234567"
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
* agent[ehmiSender].type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// source
* source.observer.identifier.value = "MSH123456"
* source.type.code = $EhmiDeliveryStatusSourceType#AP
* source.type.system = $EhmiDeliveryStatusSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
