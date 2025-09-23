Instance: SearchParameter-EDS-MessageType
InstanceOf: SearchParameter
Usage: #definition
* insert Metadata
* name = "EDSMessageTypeSearchParameter"
* description = "Search AuditEvent resources by the EHMI Message Type"
* code = #ehmiMessageType
* base = #AuditEvent
* type = #token
* expression = "AuditEvent.entity.detail.where(type='ehmiMessageType').value"
