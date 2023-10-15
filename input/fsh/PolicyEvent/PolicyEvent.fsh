Alias: $PolicyAuditEventType = http://fhir.ch/ig/ch-atc/ValueSet/PolicyAuditEventType
Alias: $EprParticipant = http://fhir.ch/ig/ch-atc/ValueSet/EprParticipant
/*
Profile: PolicyAuditEvent
Parent: AuditEvent
Id: PolicyAuditEvent
Title: "PolicyAuditEvent"
Description: "This profile defines the content of the policy audit events which a community has to provide for a patients audit trail."
* ^url = "http://fhir.ch/ig/ch-atc/StructureDefinition/PolicyAuditEvent"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the PolicyAuditEvent.</div>"
* ^text.status = #additional
* ^contact[0].name = "eHealth Suisse"
* ^contact[=].telecom.value = "https://www.e-health-suisse.ch/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "Oliver Egger"
* ^contact[=].telecom.value = "oliver.egger@ahdis.ch"
* ^contact[=].telecom.system = #email
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^status = #active
* ^publisher = "eHealth Suisse"
* ^date = "2018-05-28"
* ^copyright = "CC0-1.0"
* ^experimental = false
* obeys ch-atc-pae-2
* . ^short = "Policy Audit Trail Content Profile"
* type from AuditEventID (extensible)
* type ^binding.description = "Type of event."
* type ^binding.extension.valueString = "AuditEventType"
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* subtype ^slicing.rules = #open
* subtype ^slicing.discriminator.path = "system"
* subtype ^slicing.discriminator.type = #value
* subtype contains PolicyAuditEventType 1..1
* subtype[PolicyAuditEventType] from $PolicyAuditEventType (required)
* subtype[PolicyAuditEventType] ^short = "PolicyAuditEventType"
* subtype[PolicyAuditEventType] ^binding.description = "Policy Audit Event Type"
* subtype[PolicyAuditEventType] ^binding.extension.valueString = "ConditionKind"
* subtype[PolicyAuditEventType] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* subtype[PolicyAuditEventType].system 1..
* subtype[PolicyAuditEventType].system = "urn:oid:2.16.756.5.30.1.127.3.10.7" (exactly)
* agent ^short = "Participants"
* agent.role 1..1
* agent.role from $EprParticipant (required)
* agent.role ^binding.description = "EPR Participant"
* agent.role ^binding.extension.valueString = "ConditionKind"
* agent.role ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* agent.who.identifier 1..1
* agent.who.identifier only Identifier
* agent.name 1..
* agent.name ^definition = "AttributeStatement/Attribute[@Name='urn:oasis:names:tc:xspa:1.0:subject:subject- id']/AttributeValue"
* entity ^slicing.rules = #open
* entity ^slicing.discriminator.path = "type.code"
* entity ^slicing.discriminator.type = #value
* entity contains
    Patient 1..1 and
    Resource 0..1
* entity[Patient] ^short = "Patient"
* entity[Patient].what.identifier 1..1
* entity[Patient].what.identifier only Identifier
* entity[Patient].what.identifier ^short = "Patient Id (EPR-SPID)"
* entity[Patient].what.identifier.system 1..
* entity[Patient].what.identifier.system = "urn:oid:2.16.756.5.30.1.127.3.10.3" (exactly)
* entity[Patient].type 1..
* entity[Patient].type.code 1..
* entity[Patient].type.code = #1 (exactly)
* entity[Patient].role 1..
* entity[Patient].role.code 1..
* entity[Patient].role.code = #1 (exactly)
* entity[Resource] ^short = "Resource (HCP, Group, Representative of Patient)"
* entity[Resource].what.identifier 0..1
* entity[Resource].what.identifier only Identifier
* entity[Resource].what.identifier ^short = "Identifier: HCP (GLN), Group (OID)"
* entity[Resource].type 1..
* entity[Resource].type.code 1..
* entity[Resource].type.code = #2 (exactly)
* entity[Resource].role 1..
* entity[Resource].role from $EprParticipant (required)
* entity[Resource].role ^binding.description = "EPR Participant"
* entity[Resource].role ^binding.extension.valueString = "ConditionKind"
* entity[Resource].role ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* entity[Resource].name 1..
* entity[Resource].detail ^slicing.rules = #open
* entity[Resource].detail ^slicing.discriminator.path = "type"
* entity[Resource].detail ^slicing.discriminator.type = #value
* entity[Resource].detail contains
    AccessLevel 0..1 and
    AccessLimitedToDate 0..1 and
    ProvideLevel 0..1
* entity[Resource].detail[AccessLevel] ^short = "AccessLevel if subtype is Create or Update"
* entity[Resource].detail[AccessLevel] ^definition = "The type of extra detail provided in the value."
* entity[Resource].detail[AccessLevel].type = "AccessLevel" (exactly)
* entity[Resource].detail[AccessLevel].type ^short = "The type of extra detail provided in the value"
* entity[Resource].detail[AccessLevel].value only base64Binary
* entity[Resource].detail[AccessLevel].value ^short = "one of urn:e-health-suisse:2015:policies:access-level: normal, restricted, delegation-and-restricted, delegation-and-normal or full"
* entity[Resource].detail[AccessLevel].value ^definition = "The details, base64 encoded. Used to carry bulk information."
* entity[Resource].detail[AccessLevel].value ^comment = "The value is base64 encoded to enable various encodings or binary content."
* entity[Resource].detail[AccessLimitedToDate] ^short = "AccessLimitedToDate if subtype is Create or Update"
* entity[Resource].detail[AccessLimitedToDate].type = "AccessLimitedToDate" (exactly)
* entity[Resource].detail[AccessLimitedToDate].value only base64Binary
* entity[Resource].detail[AccessLimitedToDate].value ^short = "Date in property value"
* entity[Resource].detail[AccessLimitedToDate].value ^definition = "The details, base64 encoded. Used to carry bulk information."
* entity[Resource].detail[AccessLimitedToDate].value ^comment = "The value is base64 encoded to enable various encodings or binary content."
* entity[Resource].detail[ProvideLevel] ^short = "ProvideLevel if subtype is ATC_POL_DEF_CONFLEVEL"
* entity[Resource].detail[ProvideLevel].type = "ProvideLevel" (exactly)
* entity.detail[ProvideLevel].value only base64Binary
* entity.detail[ProvideLevel].value ^short = "one of urn:e-health-suisse:2015:policies:provide-level: normal, restricted or secret"
* entity.detail[ProvideLevel].value ^definition = "The details, base64 encoded. Used to carry bulk information."
* entity.detail[ProvideLevel].value ^comment = "The value is base64 encoded to enable various encodings or binary content."

Invariant: ch-atc-pae-2
Description: "subtype needs to be fixed to ValueSet PolicyAuditEventType"
Severity: #error
Expression: "subtype.exists() and subtype.count()=1 and subtype[0].code.startsWith('ATC_POL')"

Mapping: ch-atc
Id: ch-atc
Title: "Mapping to CH ATC"
Source: PolicyAuditEvent
Target: "https://www.bag.admin.ch/bag/en/home.html"
* subtype[PolicyAuditEventType] -> "Event Type"
* recorded -> "Event Date and Time"
* agent -> "Participants"
* agent.role -> "role (PAT, HCP, ASS, REP, GRP, PADM)"
* agent.who.identifier -> "applicable identifier"
* agent.name -> "Name"
* agent.requestor -> "if participant is Initiator"
* entity[Patient] -> "Patient"
* entity[Patient].what.identifier -> "EPR-SPID"
* entity[Resource] -> "Resource"
* entity[Resource].what.identifier -> "identifier: GLN for HCP, OID for Group"
* entity[Resource].role -> "role (HCP, REP, GRP)"
* entity[Resource].name -> "Name of HCP, Group or Representative of Patient"
* entity[Resource].detail[AccessLevel] -> "AccessLevel"
* entity[Resource].detail[AccessLimitedToDate] -> "AccessLimitedToDate"
* entity[Resource].detail[ProvideLevel] -> "ProvideLevel"
*/