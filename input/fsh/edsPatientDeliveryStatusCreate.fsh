Profile: EdsBasicDeliveryStatusPatientCreate
Parent: EdsBasicDeliveryStatusCreate
Description: "EHMI profile of the IHE.BasicAudit.PatientCreate profile based on the EHMI profile EdsBasicDeliveryStatusPatientCreate. UNDER CONSTRUCTION" 
* ^url = "http://medcomehmi.dk/ig/dk-medcom-ehmi-eds/StructureDefinition/EdsBasicDeliveryStatusPatientCreate"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsBasicDeliveryStatusPatientCreate.</div>"
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
* ^date = "2024-01-01"
* ^copyright = "CC0-1.0"
* ^experimental = false
// entity
* entity ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* entity contains
    ehmiPatient 1..1 
* entity 3..
* entity[ehmiPatient].what.identifier 1..1 MS SU
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from $EhmiDeliveryStatusEntityTypeValueset
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient
