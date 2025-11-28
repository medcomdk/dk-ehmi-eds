Instance: SearchParameter-EDS-Original-EHMIMessage-Id
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSOrigEHMIMessageIdSearchParameter"
* description = "Search AuditEvent resources by Original EHMI Message ID"
* code = #orig-message-id
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.entity.where(type.code = '* insert ehmiOrigMessage-HCO
').what.identifier.value"
