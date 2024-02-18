Profile:        EdsPatientDeliveryStatusRead
Parent:         EdsBasicDeliveryStatusRead
Id:             Eds.basic-delivery-status.PatientRead
Title:          "EdsPatientDeliveryStatusRead with a Patient"
Description: """*** UNDER SPECIFICATION ***

A basic AuditEvent profile for when a RESTful Read action happens successfully, and where there is an identifiable Patient subject associated with the read Resource.

- Given a Resource Read is requested 
- And that resource has a Patient subject or is otherwise associated with a Patient
- And the request is authorized
  - Authorization failures should follow [FHIR core Access Denied](http://hl7.org/fhir/security.html#AccessDenied)
- When successful
  - Note a failure AuditEvent may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
- Then the AuditEvent recorded will conform
"""
//* entity ^slicing.discriminator.type = #pattern
//* entity ^slicing.discriminator.path = "type"
//* entity ^slicing.rules = #open
* entity 2..
* entity contains 
    patient 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 // "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 // "Patient"
* entity[patient].role 1..
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)




