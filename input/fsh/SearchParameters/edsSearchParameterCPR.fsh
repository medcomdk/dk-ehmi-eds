Instance: SearchParameter-EDS-CPR
InstanceOf: SearchParameter
Usage: #definition
* insert Metadata
* name = "EDSEHMICPRSearchParameter"
* description = "Search AuditEvent resources by CPR"
* code = #cpr
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.entity.where(type.code = 'ehmiPatient').what.identifier.value"
