Instance: SearchParameter-EDS-EHMIReceiver-Name
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMIReceiverNameSearchParameter"
* description = "Search AuditEvent resources by EHMI Receiver Name"
* code = #receiver-name
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').name"