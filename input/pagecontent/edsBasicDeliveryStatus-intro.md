### Scope and Usage
EdsBasicDeliveryStatus is used to define the basic delivery status reporting for EDS from an EDS Client to the EDS Server.

A basic EdsBasicDeliveryStatus is based on the AuditEvent profile for and is submitted when a EHMI Core Messaging transaction 
from one station in the messageflow to another station happens successfully.

EdsBasicDeliveryStatus is only used when a Patient entity is not required, for instance for delivery status reporting of Acknowledgements. 
The EdsBasicDeliveryStatus does not have a Patient subject or is otherwise associated with a Patient. 
When the message transaction is Patient specific then EdsPatientDeliveryStatus is used.

When successfully submitted from an EDS Client to the EDS Server then the recorded EdsBasicDeliveryStatus has conformed to the profile otherwise it would 
not have a successful outcome and the EDS Client will receive an OperationOutcome indicating the failure.
