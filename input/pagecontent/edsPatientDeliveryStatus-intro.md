### Scope and Usage
EdsPatientDeliveryStatus is used to define the basic delivery status reporting for EDS from an EDS Client to the EDS Server.

The EdsPatientDeliveryStatus is an enhancement of the basic EdsBasicDeliveryStatus and is submitted when a EHMI Core Messaging transaction 
from one station in the messageflow to another station happens successfully.

EdsPatientDeliveryStatus is used when a Patient entity is required, for instance for status reporting of MedCom FHIR Messages.
The EdsPatientDeliveryStatus has a Patient subject entity and is thereby associated with a Patient. 
When the message transaction is not Patient specific then EdsBasicDeliveryStatus is used.

When successfully submitted from an EDS Client to the EDS Server then the recorded EdsPatientDeliveryStatus has conformed to the profile otherwise it would 
not have a successful outcome and the EDS Client will receive an OperationOutcome indicating the failure.
