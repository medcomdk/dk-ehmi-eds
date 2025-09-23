Instance: SearchParameter-EHMI-SenderOrg
InstanceOf: SearchParameter
Usage: #definition
* insert Metadata
* name = "EDSSenderOrgSearchParameter"
* description = "Search AuditEvent resources by the Sender Organization"
* code = #senderOrg
* base = #AuditEvent
* type = #string
* expression = """
  AuditEvent.agent.where(type.coding.code = 'ehmiSender').who.identifier.value |
  AuditEvent.agent.where(type.coding.code = 'ehmiSender').extension.where(url = 'http://medcomehmi.dk/ig/eds/StructureDefinition/eds-otherId').valueIdentifier.value |
  AuditEvent.agent.where(type.coding.code = 'ehmiSender').name
"""
