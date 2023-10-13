Instance: SampleEHMIBasicAuditPatientCreate-6.1-BS-Sender-msg-created
//InstanceOf: EHMISampleAuditEvent
InstanceOf: EHMIBasicAuditPatientCreate
Description: "An example of an EHMIBasicAuditPatientCreate."
* id = "EBAPC6.1"
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype[ehmiSubType].code = $EHMIAuditEventSubTypes#msg-received
* subtype[ehmiSubType].system = $EHMIAuditEventSubTypes
* recorded = "2023-10-01T00:00:11.000+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
//* agent[client].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[client].name = "Novax LPS"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "LPS12345"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
//* agent[server].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[server].name = "MedCom Messaging Shipping Status (MMSS)"
* agent[server].requestor = false
* agent[server].who.type = $AuditEventAgentWhoTypes#110153
* agent[server].who.identifier.value = "MMSS1234"
* agent[server].network.address = "http://shippingstatus.medcom.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// source
* source.observer.identifier.value = "LPS12345"
* source.type.code = $EHMIAuditEventSourceType#EUP
* source.type.system = $EHMIAuditEventSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

Instance: SampleEHMIBasicAuditPatientCreate-6.2-BS-Sender-msg-sent
//InstanceOf: EHMISampleAuditEvent
InstanceOf: EHMIBasicAuditPatientCreate
Description: "An example of an EHMIBasicAuditPatientCreate."
* id = "EBAPC6.2"
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype[ehmiSubType].code = $EHMIAuditEventSubTypesValueset#msg-sent
* subtype[ehmiSubType].system = $EHMIAuditEventSubTypes
* recorded = "2023-10-01T00:00:12.001+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
* agent[client].name = "Novax LPS"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "LPS12345"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
//* agent[server].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[server].name = "MedCom Messaging Shipping Status (MMSS)"
* agent[server].requestor = false
* agent[server].who.type = $AuditEventAgentWhoTypes#110153
* agent[server].who.identifier.value = "MMSS1234"
* agent[server].network.address = "http://shippingstatus.medcom.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifierTypes#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $EHMIAuditEventSourceType#EUP
* source.type.system = $EHMIAuditEventSourceType
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
