Alias: $ehmiAuditEventParticipationRoleType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-participationroletype
Alias: $ehmiAuditEventEntityType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-entity-type
Alias: $ehmiAuditEventAgentWhoIdentifiers = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-agent-who-identifiers
Alias: $ehmiAuditEventSourceType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-source-type

Instance: ehmiAuditEventExample-1.1-msg-created
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = "1.1"
* type.code = #EHMI-messaging
* subtype.code = #msg-created
* recorded = "2023-10-01T00:00:00.000+02:00" 
* outcome = #0
// ehmiSender
* agent[ehmiSender].type = $ehmiAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $ehmiAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $ehmiAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $ehmiAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $ehmiAuditEventParticipationRoleType#ehmiEUAPPLICATION 
* agent[ehmiDevice].name = "Systematic Cura EUAPPL"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $ehmiAuditEventAgentWhoIdentifiers#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $ehmiAuditEventSourceType#EUP
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $ehmiAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $ehmiAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = "ehmiMessageType"
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = "ehmiMessageVersion"
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $ehmiAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = "EnvelopeType"
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = "EnvelopeVersion"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"

/*
Instance: ehmiAuditEventExample-1.2-msg-sent
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 1.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  ehmiSender

Instance: ehmiAuditEventExamplemsg-2.1-received
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 2.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: ehmiAuditEventExamplemsg-2.2-sent
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 2.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: ehmiAuditEventExamplemsg-3.1-received
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 3.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: ehmiAuditEventExamplemsg-3.2-sent
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 3.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: ehmiAuditEventExamplemsg-4.1-received
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 4.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: ehmiAuditEventExamplemsg-4.2-sent
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 4.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: ehmiAuditEventExamplemsg-5.1-received
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 5.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: ehmiAuditEventExamplemsg-5.2-sent
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 5.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: ehmiAuditEventExamplemsg-6.1-finalized
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 6.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  ehmiReceiver

Instance: ehmiAuditEventExamplemsg-6.1-finalized
InstanceOf: ehmiAuditEvent
Description: "An example of an ehmiAuditEvent."
* id = 6.2
* type =  EHMI-messaging
* subtype =  msg-finalized
* outcome = 0
* agent.type =  ehmiReceiver
*/