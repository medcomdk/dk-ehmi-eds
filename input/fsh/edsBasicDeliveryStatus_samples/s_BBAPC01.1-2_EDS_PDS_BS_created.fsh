Instance: 01.1-EDS_PDS_Create-BS-Sender-msg-created
InstanceOf: EdsPatientDeliveryStatusCreate
Description: "An example of an EdsPatientDeliveryStatusCreate.

- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-created
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"
* id = "EBAPC01.1"

* type = $EhmiDeliveryStatusTypes#rest "Restful Operation"

* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[anyCreate].system = $AuditEventSubTypes
* subtype[anyCreate].display = "create"

* subtype[msg-created] = $EhmiDeliveryStatusSubTypes#msg-created "Message created"

//* subtype[msg-created].code = $EhmiDeliveryStatusSubTypes#msg-created
//* subtype[msg-created].system = $EhmiDeliveryStatusSubTypes
//* subtype[msg-created].display = "Message created"

* recorded = "2024-04-01T00:00:01.000+02:00" 
//* outcome = $EhmiDeliveryStatusOutcome#0
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"

// Client
* agent[client].name = "Systematic Cura End User APPL" // Device name
* agent[client].requestor = true // Always
* agent[client].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM" // Always
* agent[client].type.coding.code = $AuditEventAgentWhoTypes#110153 // Always
* agent[client].type.coding.display = "Source Role ID" // Always
* agent[client].who.identifier.value = "EUA12345" // DeviceId for the client
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"  // Always
* agent[server].requestor = false // Always
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM" // Always
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152 // Always
* agent[server].type.coding.display = "Destination Role ID" // Always
* agent[server].who.identifier.value = "EDS1234" // Always - DeviceID for eds server
* agent[server].network.address = "http://eds.ehmi.dk/" // Always
* agent[server].network.type = $AuditEventAgentNetworkType#5 // Always
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
//* agent[ehmiSender].who = Reference(Organization/EHMI.SOR.OU-AAR-Kommune.1027201000016001)
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiSender].who.identifier.value = "SOR1234"
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.value = "GLN-1234"
// ehmiReceiver
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR12345"
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "EUA12345"
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "EUA (End-user Application)"
// data
* entity[data].what.identifier.value = "EhmiDeliveryStatus"
* entity[data].type.code = $AuditEventEntityType#2
* entity[data].type.system = $AuditEventEntityType
* entity[data].type.display = "System Object"
* entity[data].role = $EhmiDeliveryStatusEntityObjectRoles#20 "Job"
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiPatient].type.display = "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
//* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
//* entity[ehmiMessage].detail[ehmiMessageType].type.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
//* entity[ehmiMessage].detail[ehmiMessageType].type.detail = "HomeCareObservation 1.0"
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
//* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

// MessageEnvelope (Bundle)
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
//* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
//* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
//* entity[ehmiMessage].detail[ehmiMessageType].type.code = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:messaging:fhir:structuredefinition:homecareobservation:1.0
//* entity[ehmiMessage].detail[ehmiMessageType].type.detail = "HomeCareObservation 1.0"
//* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
//* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
//* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"

Instance: 01.2-EDS_PDS_Create-BS-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatusCreate
Description: "An example of an EdsPatientDeliveryStatusCreate.

- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an EUA
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
"

* id = "EBAPC01.2"
//* type.code = $EhmiDeliveryStatusTypesValueSet#ehmiMessaging

* type = $EhmiDeliveryStatusTypes#rest "Restful Operation"

* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[anyCreate].system = $AuditEventSubTypes
* subtype[anyCreate].display = "create"
* subtype[anyCreate].system = $AuditEventSubTypes

* subtype[msg-sent].code = $EhmiDeliveryStatusSubTypes#msg-sent
* subtype[msg-sent].system = $EhmiDeliveryStatusSubTypes
* subtype[msg-sent].display = "Message sent"

* recorded = "2024-04-01T00:00:02.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "Systematic Cura End User APPL"
* agent[client].requestor = true
* agent[client].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[client].type.coding.code = $AuditEventAgentWhoTypes#110153
* agent[client].type.coding.display = "Source Role ID"
* agent[client].who.identifier.value = "EUA12345"
* agent[client].who.display = "Systematic Cura End User APPL"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"
* agent[server].requestor = false
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152
* agent[server].type.coding.display = "Destination Role ID"
* agent[server].who.identifier.value = "EDS1234"
* agent[server].who.display = "EHMI Delivery Status (EDS)"
* agent[server].network.address = "http://eds.ehmi.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = true
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
* agent[ehmiSender].who.display = "Aarhus Kommune"
* agent[ehmiSender].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiSender].who.identifier.value = "SOR1234"
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiSender].extension[otherId][gln].valueIdentifier.value = "GLN-1234"
// ehmiReceiver
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiReceiver].type.coding.display = "Receiver"
* agent[ehmiReceiver].who.display = "Løgten Lægehus"
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR12345"
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "EUA12345"
* source.observer.display = "EUA (End-user Application)"
* source.type.code = $EhmiDeliveryStatusSourceType#EUA
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "EUA (End-user Application)"

// data
* entity[data].what.identifier.value = "EhmiDeliveryStatus"
* entity[data].type.code = $AuditEventEntityType#2
* entity[data].type.system = $AuditEventEntityType
* entity[data].type.display = "System Object"
* entity[data].role = $EhmiDeliveryStatusEntityObjectRoles#20 "Job"

// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.code = $EhmiDeliveryStatusEntityType#ehmiMessage
* entity[ehmiMessage].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessage].type.display = "Message"
* entity[ehmiMessage].detail[ehmiMessageType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "HomeCareObservation"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
// Message Envelope
* entity[ehmiMessageEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiMessageEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiMessageEnvelope
* entity[ehmiMessageEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiMessageEnvelope].type.display = "Message Envelope"
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
* entity[ehmiMessageEnvelope].detail[ehmiMessageEnvelopeType].valueString = "FHIR Bundle"
