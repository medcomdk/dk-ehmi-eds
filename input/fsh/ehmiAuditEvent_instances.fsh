Alias: $EHMIAuditEventParticipationRoleType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-participationroletype
Alias: $EHMIAuditEventEntityType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-entity-type
Alias: $EHMIAuditEventAgentWhoIdentifiers = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-agent-who-identifiers
Alias: $EHMIAuditeventSourceType = http://medcomehmi.dk/ig/ehmi_balp/CodeSystem/ehmi-auditevent-source-type

Instance: EHMIAuditEventExample-1.1-msg-created
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "1.1"
* type.code = #EHMI-messaging
* subtype.code = #msg-created
* recorded = "2023-10-01T00:00:00.000+02:00" 
* outcome = #0
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender "Sender"
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver "Receiver"
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#EUAPPLICATION "End-user Appliaction"
* agent[ehmiDevice].name = "Systematic Cura EUAPPL"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#DEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $EHMIAuditeventSourceType#EUP
// Patient
* entity[Patient].what.identifier.value = "PAT1234567890"
* entity[Patient].type = $EHMIAuditEventEntityType#Patient
// Message
* entity[Message].what.identifier.value = "MSG1234567890"
* entity[Message].type = $EHMIAuditEventEntityType#Message
* entity[Message].detail[MessageType].type = "MessageType"
* entity[Message].detail[MessageType].valueString = "MunicipalityObservations"
* entity[Message].detail[MessageVersion].type = "MessageVersion"
* entity[Message].detail[MessageVersion].valueString = "1.0"
// Envelope
* entity[Envelope].what.identifier.value = "ENV1234567890"
* entity[Envelope].type = $EHMIAuditEventEntityType#Envelope
* entity[Envelope].detail[EnvelopeType].type = "EnvelopeType"
* entity[Envelope].detail[EnvelopeType].valueString = "SBDH"
* entity[Envelope].detail[EnvelopeVersion].type = "EnvelopeVersion"
* entity[Envelope].detail[EnvelopeVersion].valueString = "2.0"

/*
Instance: EHMIAuditEventExample-1.2-msg-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 1.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  ehmiSender

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