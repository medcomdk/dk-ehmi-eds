Instance: SearchParameter-Entity-Identifier
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSEntityIdentifierSearchParameter"
* description = "Search AuditEvent resources by the entity.detail identifier value"
* code = #entityIdentifier
* base = #AuditEvent
* type = #string
* expression = """
  AuditEvent.entity.where(type.code = 'ehmiMessage').what.identifier.value |
  AuditEvent.entity.where(type.code = 'ehmiMessageEnvelope').what.identifier.value |
  AuditEvent.entity.where(type.code = 'ehmiTransportEnvelope').what.identifier.value |
  AuditEvent.entity.where(type.code = 'ehmiOrigMessage').what.identifier.value |
  AuditEvent.entity.where(type.code = 'ehmiOrigTransportEnvelope').what.identifier.value
"""
