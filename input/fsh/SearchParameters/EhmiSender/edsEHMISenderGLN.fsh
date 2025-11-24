Instance: SearchParameter-EDS-EHMISender-GLN
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEHMISenderGLNSearchParameter"
* description = "Search AuditEvent resources by EHMI Sender GLN"
* code = #sender-gln
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiSender').extension('http://medcomehmi.dk/ig/eds/StructureDefinition/eds-otherId').value.ofType(Identifier).value"