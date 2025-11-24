Instance: SearchParameter-EDS-EHMISender-Name
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMISenderNameSearchParameter"
* description = "Search AuditEvent resources by EHMI Sender Name"
* code = #sender-name
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiSender').name"