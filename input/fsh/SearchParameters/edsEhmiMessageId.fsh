Instance: SearchParameter-EDS-EHMIMessage-Id
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMIMessageIdSearchParameter"
* description = "Search AuditEvent resources by EHMI Message ID"
* code = #message-id
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.entity.where(type.code = 'ehmiMessage').what.identifier.value"
