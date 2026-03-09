Instance: SearchParameter-EDS-Source-Observer
InstanceOf: SearchParameter
Usage: #definition
* insert SearchParameterMetadata
* name = "EDSSourceObserverSearchParameter"
* description = "Search AuditEvent resources by EHMI Source Observer"
* code = #source-observer
* base = #AuditEvent
* type = #reference
* expression = "AuditEvent.source.observer"