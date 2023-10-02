CodeSystem: EHMIAuditEventTypes
Id: ehmi-auditevent-types
Title: "EHMI AuditEvent Types CS"
Description: "ehmi-auditevent-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #EHMI-messaging "EHMI message events"

ValueSet: EHMIAuditEventTypesValueset
Id: ehmi-auditevent-types-valueset
Title: "EHMI AuditEvent Types Valueset"
Description: "ValueSet containing codes for EHMI AuditEventTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditEventTypes

CodeSystem: EHMIAuditEventSubTypes
Id: ehmi-auditevent-sub-types
Title: "EHMI AuditEvent SubTypes CS"
Description: "ehmi-auditevent-types for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #msg-created "A new message has been created"
* #msg-sent "A new message has been sent"
* #msg-received "A new message has been recieved"
* #msg-finalized "A message has reached its final reciever"

ValueSet: EHMIAuditEventSubTypesValueset
Id: ehmi-auditevent-sub-types-valueset
Title: "EHMI AuditEvent SubTypes Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent SubTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditEventSubTypes

ValueSet: EHMIAuditEventOutcomeValueset
Id: ehmi-auditevent-outcome-valueset
Title: "EHMI AuditEvent Outcome Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent SubTypes"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include #0 from system http://hl7.org/fhir/audit-event-outcome
* include #8 from system http://hl7.org/fhir/audit-event-outcome
* exclude #4 from system http://hl7.org/fhir/audit-event-outcome
* exclude #12 from system http://hl7.org/fhir/audit-event-outcome

CodeSystem: EHMIAuditEventParticipationRoleType
Id: ehmi-auditevent-participationroletype
Title: "EHMI AuditEvent ParticipationRoleType CS"
Description: "ehmi-auditevent-participationroletype for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #SENDER "The application that creates a new message"
* #MSH "The Message Service Handler that passes the message on"
* #EDEL-AP "The eDelivery Access Point that passes the message on"
* #RECEIVER "The application that receives the new message"

ValueSet: EHMIAuditEventParticipationRoleTypeValueset
Id: ehmi-auditevent-participationroletype-valueset
Title: "EHMI AuditEvent ParticipationRoleType Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent ParticipationRole"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditEventParticipationRoleType

CodeSystem: EHMIAuditEventAgentWhoIdentifiers
Id: ehmi-auditevent-agent-who-identifiers
Title: "EHMI AuditEvent agent.who.identifier CS"
Description: "ehmi-auditevent-agent.who.identifier for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #GLN "GLN representing either the sender or the receiver organization "

ValueSet: EHMIAuditEventAgentWhoIdentifiersValueset
Id: ehmi-auditevent-agent-who-identifiers-valueset
Title: "EHMI AuditEvent AgentWhoIdentifiers Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent AgentWhoIdentifiers"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditEventAgentWhoIdentifiers

/*
CodeSystem: AuditEventAgentNetwork
Id: ehmi-auditevent-network
Title: "EHMI AuditEvent audit-source-type CS"
Description: "ehmi-auditevent-audit-source-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #1 "Machine Name" "The machine name, including DNS name"
*/

ValueSet: AuditEventAgentNetworkValueset
Id: ehmi-auditevent-network-valueset
Title: "EHMI AuditEvent Network Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent ehmi-auditevent-network"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
//* include codes from system ehmi-auditevent-network
* include #1 from system http://hl7.org/fhir/network-type
//* include #2 from system http://hl7.org/fhir/network-type

CodeSystem: EHMIAuditeventSourceType
Id: ehmi-auditevent-source-type
Title: "EHMI AuditEvent Source Type CS"
Description: "ehmi-auditevent-audit-source-type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #EUP "EUP (End-user Application)" "End-user display device, diagnostic device"
* #MSH "MSH (Application Server)" "ISO level 4-6 operating software."
* #AP "AP (Access Point -Network Router)" "ISO level 4-6 operating software."
/*
* include #1 from system http://terminology.hl7.org/CodeSystem/security-source-type
* include #4 from system http://terminology.hl7.org/CodeSystem/security-source-type
* include #8 from system http://terminology.hl7.org/CodeSystem/security-source-type
*/

ValueSet: EHMIAuditeventSourceTypeValueset
Id: ehmi-auditevent-source-type-valueset
Title: "EHMI AuditEvent Source Type Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent AgentWhoIdentifiers"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditeventSourceType

CodeSystem: EHMIAuditEventEntityType
Id: ehmi-auditevent-entity-type
Title: "EHMI AuditEvent Entity Type CS"
Description: "EHMI AuditEvent Entity Type for the EHMI Messaging Infrastructure"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* ^caseSensitive = true
* #Patient "Patient"
* #Message "Message"
* #Envelope "Envelope"
* #OrigMessage "Original Message"
* #OrigEnvelope "Original Envelope"

ValueSet: EHMIAuditEventEntityTypeValueset
Id: ehmi-auditevent-entity-type-valueset
Title: "EHMI AuditEvent Entity Type Valueset"
Description: "ValueSet containing codes for EHMI AuditEvent Entity Type"
* ^version  =  "1.0.0"
* ^status  =  #active
* ^date  =  "2023-09-01"
* ^experimental = false
* include codes from system EHMIAuditEventEntityType


