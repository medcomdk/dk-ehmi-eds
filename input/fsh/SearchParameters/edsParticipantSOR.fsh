Instance: SearchParameter-EDS-Participant-SOR
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSParticipantSORSearchParameter"
* description = "Search AuditEvent resources by EHMI Participant SOR"
* code = #participant-sor
* base = #AuditEvent
* type = #string
* expression = "AuditEvent.agent.where(type.coding.code = 'ehmiReceiver').who.identifier.value | AuditEvent.agent.where(type.coding.code = 'ehmiSender').who.identifier.value"