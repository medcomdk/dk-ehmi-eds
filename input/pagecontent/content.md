## Inherited from IHE BALP profile (will be profiled for eds soon)
### 3:5.7.1 Scope
The EdsBasicDeliveryStatus (AuditEvent) resource is used to record that an auditable event has happened. These auditable events are usually security or privacy relevant, but may be for other purposes. The profiles of EdsBasicDeliveryStatus (AuditEvent) here are to support security and/or privacy use-cases. These profiles of EdsBasicDeliveryStatus (AuditEvent) can be used as is, or may be used to derive more specific profiles of EdsBasicDeliveryStatus (AuditEvent) for more specific use-cases. 
### 3:5.7.2 Content
The following EdsBasicDeliveryStatus (AuditEvent) patterns are defined:
- [ehmiMessaging activities](content.html)
### 3:5.7.3 ehmiMessaging  activities
Create, Update, and Query follow a similar pattern where the initiator (client) of the RESTful interaction is identified as the Source Role ID and the responder (server) is the Destination Role ID. Read pattern with the (client) of the RESTful interaction, which will receive the data, is considered the Destination Role ID and the responder (server) is the Source Role ID. This pattern is found in both DICOM and XDS. Delete uses of a pattern with (client) of the RESTful interaction is indicated as the Application and (server) of the RESTful interaction is indicated as the Custodian.
When a FHIR RESTful interaction happens, the following EdsBasicDeliveryStatus (AuditEvent) patterns can be used. These EdsBasicDeliveryStatus (AuditEvent) patterns include a `user` slice that is minimally populated. These EdsBasicDeliveryStatus (AuditEvent) patterns can be combined with the Security Token Use pattern to record one EdsBasicDeliveryStatus (AuditEvent) that contains the details of the security context and the FHIR RESTful context.
There are two sets of profiles distinguished by "Patient as a subject(entity)" being mandated to be populated. 
 ehmiMessaging event | basic profile | with patient | examples
-----------|---------------|-----------------------------
MedCom FHIR Messaging | - | [Patient related Messages](StructureDefinition-EdsPatientDeliveryStatus.html) | [examples](index.html)
MedCom FHIR Messaging | [Acknowledgements](StructureDefinition-EdsBasicDeliveryStatus.html) | - | [examples](index.html)
{:.grid}
An example of an auditable event being recorded by the client and server is represented by the Create examples. 
