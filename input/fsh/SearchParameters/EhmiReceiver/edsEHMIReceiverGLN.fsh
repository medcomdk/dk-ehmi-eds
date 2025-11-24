Instance: SearchParameter-EDS-EHMIReceiver-GLN
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMIReceiverGLNSearchParameter"
* description = "Search AuditEvent resources by EHMI Receiver GLN"
* code = #receiver-gln
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').extension('http://medcomehmi.dk/ig/eds/StructureDefinition/eds-otherId').value.ofType(Identifier).value"