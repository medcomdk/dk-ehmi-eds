Instance: 04.1-EDS_PDS_Create-AP-Sender-msg-received
InstanceOf: EdsPatientDeliveryStatusCreate
Description: "An example of an EdsPatientDeliveryStatusCreate.

- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-received
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV1234567890
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0

"
* id = "EBAPC04.1"
* type = $EhmiDeliveryStatusTypes#rest "Restful Operation"

* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[anyCreate].system = $AuditEventSubTypes
* subtype[anyCreate].display = "create"

* subtype[msg-received].code = $EhmiDeliveryStatusSubTypes#msg-received
* subtype[msg-received].system = $EhmiDeliveryStatusSubTypes
* subtype[msg-received].display = "Message received"

* recorded = "2023-10-01T00:00:07.000+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[client].type.coding.code = $AuditEventAgentWhoTypes#110153
* agent[client].type.coding.display = "Source Role ID"
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"
* agent[server].requestor = false
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152
* agent[server].type.coding.display = "Destination Role ID"
* agent[server].who.identifier.value = "EDS1234"
* agent[server].network.address = "http://eds.ehmi.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
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
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR12345"
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EhmiDeliveryStatusSourceType#AP
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "AP (Access Point -Network Router)"
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
// Envelope
* entity[ehmiTransportEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiTransportEnvelope].type.display = "Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"

Instance: 04.2-EDS_PDS_Create-AP-Sender-msg-sent
InstanceOf: EdsPatientDeliveryStatusCreate
Description: "An example of an EdsPatientDeliveryStatusCreate.

- recorded by the client
- server is EHMI Delivery Status (EDS) FHIR application server 
- client is an AP
- ehmiSubType = msg-sent
- ehmiSender = Aarhus Kommune
- ehmiReceiver = Løgten Lægehus
- ehmiPatient = PAT1234567890 
- ehmiMessage = MSG1234567890
- ehmiMessageType = HomeCareObservation
- ehmiMessageVersion = 1.0
- ehmiTransportEnvelope = ENV1234567890
- ehmiTransportEnvelopeType = SBDH
- ehmiTransportEnvelopeVersion = 2.0

"
* id = "EBAPC04.2"
* type = $EhmiDeliveryStatusTypes#rest "Restful Operation"

* subtype[anyCreate].code = $AuditEventSubTypes#create
* subtype[anyCreate].system = $AuditEventSubTypes
* subtype[anyCreate].display = "create"

* subtype[msg-sent].code = $EhmiDeliveryStatusSubTypes#msg-sent
* subtype[msg-sent].system = $EhmiDeliveryStatusSubTypes
* subtype[msg-sent].display = "Message sent"

* recorded = "2023-10-01T00:00:08.001+02:00" 
* outcome = $EhmiDeliveryStatusOutcome#0
// Client
* agent[client].name = "MultiMed AP"
* agent[client].requestor = true
* agent[client].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[client].type.coding.code = $AuditEventAgentWhoTypes#110153
* agent[client].type.coding.display = "Source Role ID"
* agent[client].who.identifier.value = "AP123456"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
* agent[server].name = "EHMI Delivery Status (EDS)"
* agent[server].requestor = false
* agent[server].type.coding.system = "http://dicom.nema.org/resources/ontology/DCM"
* agent[server].type.coding.code = $AuditEventAgentWhoTypes#110152
* agent[server].type.coding.display = "Destination Role ID"
* agent[server].who.identifier.value = "EDS1234"
* agent[server].network.address = "http://eds.ehmi.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].type.coding.code = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
* agent[ehmiSender].type.coding.system = $EhmiDeliveryStatusParticipationRoleType
* agent[ehmiSender].type.coding.display = "Sender"
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
* agent[ehmiReceiver].who.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
* agent[ehmiReceiver].who.identifier.value = "SOR12345"
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#GLN 
* agent[ehmiReceiver].extension[otherId][gln].valueIdentifier.value = "GLN-12345"
// source
* source.observer.identifier.value = "AP123456"
* source.type.code = $EhmiDeliveryStatusSourceType#AP
* source.type.system = $EhmiDeliveryStatusSourceType
* source.type.display = "AP (Access Point -Network Router)"
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
// Envelope
* entity[ehmiTransportEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiTransportEnvelope].type = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.code = $EhmiDeliveryStatusEntityType#ehmiTransportEnvelope
* entity[ehmiTransportEnvelope].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiTransportEnvelope].type.display = "Envelope"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeType].valueString = "SBDH"
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion
* entity[ehmiTransportEnvelope].detail[ehmiTransportEnvelopeVersion].valueString = "2.0"
