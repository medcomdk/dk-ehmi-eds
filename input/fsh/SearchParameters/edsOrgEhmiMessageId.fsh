Instance: SearchParameter-EDS-Original-EHMIMessage-Id
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSOrgEHMIMessageIdSearchParameter"
* description = "Search AuditEvent resources by Original EHMI Message ID"
* code = #org-message-id
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.entity.where(type.code = 'ehmiOrigMessage').what.identifier.value"
