Instance: SearchParameter-EHMI-ReceiverOrg
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSReceiverOrgSearchParameter"
* description = "Search AuditEvent resources by the Receiver Organization"
* code = #receiverOrg
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').who.identifier.value | AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').extension('http://medcomehmi.dk/ig/eds/StructureDefinition/eds-otherId').value.ofType(Identifier).value | AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').name"

