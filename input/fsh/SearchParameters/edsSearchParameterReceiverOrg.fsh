Instance: SearchParameter-EHMI-ReceiverOrg
InstanceOf: SearchParameter
Usage: #definition
* insert Metadata
* name = "EDSReceiverOrgSearchParameter"
* description = "Search AuditEvent resources by the Receiver Organization"
* code = #receiverOrg
* base = #AuditEvent
* type = #string
* expression = """
  AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').who.identifier.value |
  AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').extension.where(url = 'http://medcomehmi.dk/ig/eds/StructureDefinition/eds-otherId').valueIdentifier.value |
  AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').name
"""
