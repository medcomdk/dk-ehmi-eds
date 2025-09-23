Instance: SearchParameter-Entity-Identifier
InstanceOf: SearchParameter
Usage: #definition
* insert Metadata
* name = "EDSEntityIdentifierSearchParameter"
* description = "Search AuditEvent resources by the entity.detail identifier value"
* code = #entityIdentifier
* base = #AuditEvent
* type = #string
* expression = """
  AuditEvent.entity.detail.where(type = 'ehmiMessage').what.identifier.value |
  AuditEvent.entity.detail.where(type = 'ehmiMessageEnvelope').what.identifier.value |
  AuditEvent.entity.detail.where(type = 'ehmiTransportEnvelope').what.identifier.value |
  AuditEvent.entity.detail.where(type = 'ehmiOrigMessage').what.identifier.value |
  AuditEvent.entity.detail.where(type = 'ehmiOrigTransportEnvelope').what.identifier.value
"""
