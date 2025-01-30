Profile: EdsPatientDeliveryStatus
Parent: EdsBasicDeliveryStatus
Description: "
EdsPatientDeliveryStatus is used to define the basic delivery status reporting for EDS from an EDS Client to the EDS Server.

The EdsPatientDeliveryStatus is an enhancement of the basic EdsBasicDeliveryStatus and is submitted when a EHMI Core Messaging transaction 
from one station in the messageflow to another station happens successfully.

EdsPatientDeliveryStatus is used when a Patient entity is required, for instance for status reporting of MedCom FHIR Messages.
The EdsPatientDeliveryStatus has a Patient subject entity and is thereby associated with a Patient. 
When the message transaction is not Patient specific then EdsBasicDeliveryStatus is used.

When successfully submitted from an EDS Client to the EDS Server then the recorded EdsPatientDeliveryStatus has conformed to the profile otherwise it would 
not have a successful outcome and the EDS Client will receive an OperationOutcome indicating the failure.
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
