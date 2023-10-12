Instance: EHMISampleAuditEvent-4.1-AP-Receiver-msg-received
InstanceOf: EHMISampleAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "4.1"
* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype.code = $EHMIAuditEventSubTypesValueset#msg-received
* recorded = "2023-10-01T00:00:00.000+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura EUAPPL"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $EHMIAuditEventSourceType#EUP
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
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

Instance: EHMISampleAuditEvent-4.2-AP-Receiver-msg-sent
InstanceOf: EHMISampleAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "4.2"
* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype.code = $EHMIAuditEventSubTypesValueset#msg-sent
* recorded = "2023-10-01T00:00:00.001+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura MSH"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV123456"
// source
* source.observer.identifier.value = "DEV123456"
* source.type.code = $EHMIAuditEventSourceType#MSH
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
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
