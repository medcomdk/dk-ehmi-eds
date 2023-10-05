Alias: $EHMIAuditEventTypes = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-types
Alias: $EHMIAuditEventSubTypesValueset = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-subtypes
Alias: $EHMIAuditEventOutcome = http://hl7.org/fhir/audit-event-outcome
Alias: $EHMIAuditEventSourceType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-source-type
Alias: $EHMIAuditEventParticipationRoleType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-participationroletype
Alias: $EHMIAuditEventAgentWhoIdentifiers = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-agent-who-identifiers
Alias: $EHMIAuditEventEntityType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-entity-type
Alias: $EHMIAuditEventEntityDetailType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-entity-detail-type


Instance: EHMIAuditEventExample-3.1-AP-Sender-msg-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "3.1"
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

Instance: EHMIAuditEventExample-3.2-AP-Sender-msg-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "3.2"
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


/*
Instance: EHMIAuditEventExamplemsg-2.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 2.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-2.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 2.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-3.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 3.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-3.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 3.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-4.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 4.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-4.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 4.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-5.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 5.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-5.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 5.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-6.1-finalized
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 6.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  ehmiReceiver

Instance: EHMIAuditEventExamplemsg-6.1-finalized
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 6.2
* type =  EHMI-messaging
* subtype =  msg-finalized
* outcome = 0
* agent.type =  ehmiReceiver
*/