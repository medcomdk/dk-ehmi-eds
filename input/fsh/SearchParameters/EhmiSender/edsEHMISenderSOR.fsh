Instance: SearchParameter-EDS-EHMISender-SOR
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMISenderSORSearchParameter"
* description = "Search AuditEvent resources by EHMI Sender SOR"
* code = #sender-sor
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiSender').who.identifier.value"