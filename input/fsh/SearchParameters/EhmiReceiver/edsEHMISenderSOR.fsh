Instance: SearchParameter-EDS-EHMIReceiver-SOR
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMIReceiverSORSearchParameter"
* description = "Search AuditEvent resources by EHMI Receiver SOR"
* code = #receiver-sor
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').who.identifier.value"