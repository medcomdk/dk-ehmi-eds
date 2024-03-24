Profile: EdsPatientDeliveryStatus
Parent: EdsBasicDeliveryStatus
Description: "*** UNDER SPECIFICATION ***
EHMI profile inspired by the IHE.BasicAudit.PatientCreate profile based on the EHMI profile EdsBasicDeliveryStatus.
EdsPatientDeliveryStatus is used to define the status reporting for EDS from a EDS Client to the EDS Server.
EdsPatientDeliveryStatus is used when a Patient entity is required, for instance for status reporting of MedCom FHIR Messages.
A EdsPatientDeliveryStatus based on the AuditEvent profile for when a EHMI Patient Delivery Status Messaging action happens successfully.
It is used when 
- the resource has a Patient subject or is otherwise associated with a Patient
  - when the resource is not Patient related then EdsBasicDeliveryStatus is used
- And the request is authorized
- When successful
  - Note a failure EdsPatientDeliveryStatus may follow this pattern, but would not be a successful outcome and should have an OperationOutcome
  - Then the EdsPatientDeliveryStatus recorded will conform
" 
* ^url = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/EdsPatientDeliveryStatus"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsPatientDeliveryStatus.</div>"
* ^text.status = #additional
* ^contact[0].name = "MedCom"
* ^contact[=].telecom.value = "https://www.medcom.dk/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "OVI"
* ^contact[=].telecom.value = "ovi@medcom.dk"
* ^contact[=].telecom.system = #email
//* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^status = #active
* ^publisher = "MedCom"
* ^date = "2024-04-01"
* ^copyright = "CC0-1.0"
* ^experimental = false
* entity contains
    ehmiPatient 1..1 
* entity 3..
* entity[ehmiPatient].what.identifier 1..1 MS SU // Patient identifier UUIDv5 converted
//* entity[ehmiPatient].what.identifier obeys uuid
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
* entity[ehmiPatient].role = http://terminology.hl7.org/CodeSystem/object-role#1 // "Patient"
* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiPatient].type.display = "Patient"
