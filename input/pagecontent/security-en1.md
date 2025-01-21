## 7.1 EHMI Delivery Status (EDS) 

In EHMI, the following stations are involved in point-to-point message transmissions: Business systems, message service handlers and access points.

All stations participating in an EHMI message transmission must register their message handling in the transmission status service EDS, as described in the FHIR implementation guide at https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/.

The stations are created in the EHMI Endpoint register (EER) and are assigned a unique device_id during creation.

As stated in the FHIR implementation guide, shipment status is realized as a profiling of the FHIR AuditEvent resource.

The shipping status contains sensitive personal information (in the form of the processing site that is included as the sender or recipient of a message), and user access therefore requires an NSIS level of 'Significant'.

### 7.1.1 EDS use cases

There are two main use cases for the use of the EDS shipment status service.

The stations in an EHMI shipment each record the shipment status in EDS. Registration is done at system level, and the individual stations can create shipment status for the organizational contexts (combinations of GLN numbers and SOR codes) for which they are whitelisted (see below).

EDS provides an interface for searching and posting, which can be used for track'n'trace of message sending or for troubleshooting.
Searching and posting can either take place: a. At the system level for the stations on their own device_id. (This allows, for example, functionality to be established from professional systems where users can search for the status of messages they have sent themselves.) b. At the citizen level on their own CPR
c. At the super user/supplier (supporter) level on the CVR number for the user's organization and where the user is granted access via a special right (which is granted through the SEB user directory)

### 7.1.2 Enrollment/whitelisting of system clients in EDS (for registration, search and lookup)
Stations that register shipment status and can search and read their own registrations are enrolled as system clients. In addition to the elements described in section 3.3 Enrolling clients, the following must be specified when enrolling system clients: - The device_id with which the station is registered in EER - A list of organizational contexts for which the station sends/receives messages in the form of SOR code and GLN location number

During enrollment, the following is specified as a scope element:

(The above system/AuditEvent.crs syntax is based on the definition of scopes for FHIR resources in [SMART].) Metadata for an EDS system client

In addition to the metadata elements described in section 3.3.1 Metadata for clients, the following metadata elements must be specified for system clients.

Metadata element Description ehmi:eer:device_id A specification of the device_id with which the station is registered in EER. ehmi:org_context An array of JSON objects consisting of name (organization name), sor (SOR code) and gln (location number) for which the station sends/receives messages.

Note that the intention is that after the production pilot, the Authorization Server will instead look up a station's organizational contexts in the EER mailbox registry, and the explicit whitelisting will thus be eliminated. Example metadata document for an EDS system client:

### 7.1.3 Enrollment/whitelisting of user clients (for search and posting)
User clients used by citizens or super users/supporters to search and read shipment status records are enrolled only with the elements described in section 3.3 Enrollment of clients.

During enrollment, the following scope element is specified:

Metadata for an EDS user client for search and lookup For EDS user clients, only the metadata described in section 3.3.1 Metadata for clients must be specified. Example metadata document for an EDS user client:

### 7.1.4 Call to Token Endpoint

In the access to EDS, registrations are operated with organization-specific tokens, meaning that the individual stations' system clients that appear in multiple organizational contexts must obtain a separate token from the Authorization Server for each SOR/GLN context. In order to be issued an access token to access EDS, the following scopes are specified: scope Description

EDS An indication to EDS that the client wants an access token. system/AuditEvent.crs (for system clients only) An indication that the token should be able to register/read/search shipment status resources (which are profiles of FHIR's AuditEvent resource). user/AuditEvent.rs (for user clients only) An indication that the token should be able to read and search shipment status resources (which are profiles of FHIR's AuditEvent resource). SOR: (only for system clients and only for registrations) A statement of the organization's SOR code, where is added to the code itself.

GLN: (only for system clients and only for registrations) A statement of the organization's GLN location number, where is set to the location number itself.

Example of a combined scope included in the call for a system client:

The example of a call to Token Endpoint with the above example scope (note that the call is made via 2-way TLS):

**Validations of the call at Authorization Server**

The call to the Token Endpoint is validated at the Authorization Server, which validates the client's TLS client certificate and checks that the client is enrolled/whitelisted with the specified scopes.

For system clients requesting a token to make registrations, the Authorization Server thus maps the client_id from the call to the registered device_id and validates that the client is whitelisted for both the EDS service, the specified 'create' operation for the AuditEvent resource, and the specified organizational context in the form of SOR code and GLN location number.

For access tokens issued to system clients that make registrations in EDS, the Authorization Server embeds the device_id and the organizational context as additional claims in the token in the following form:

Claim               Description 
ehmi:eer:device_id  A specification of the device_id with which the station is registered in EER. 
ehmi:org_context    The current organizational context for the station, specified as a JSON object consisting of name (organization name), sor (SOR code) and gln (location number).

### 7.1.5 Call to EDS
Calls to EDS are made as described in the general security model as REST calls over two-way TLS, with the access token (which is sender-constrained) in an HTTP header.

Example of a system client's 'create' call to EDS with the AuditEvent resource specified as a JSON object:

**EDS access control**

The sending status service checks that the access token is both valid and issued to EDS and validates the 'sender-contrained' property, that is, validates that the TLS client certificate used by the client matches the certificate that was embedded in the access token.

When registering a shipment status, the service also checks that the token contains the necessary scopes for the client to make registrations in EDS. EDS also checks whether the SOR code, GLN location number and device_id that it can extract from the access token match the information in the accompanying AuditEvent resource. When searching and reading, the EDS service limits the access:

1. For system clients representing a station in a message flow: To registrations made by the station's own device_id. EDS thus restricts access to shipping status registrations that include the same device_id as stated in the access token's ehmi:eer:device_id claim.

2. For citizens who access EDS via a user client: For registrations made using the citizen's own CPR number.

EDS thus restricts access to shipment status records that include the same patient CPR number as appears from the access token's CPR claim.

1. For super users/supporters who access EDS via a user client: For registrations regarding their own organization at CVR level.

EDS first validates that the access-granting role assigned to superusers/supporters is reflected in the access token's role structure in the priv claim. EDS then restricts access to shipment status records that include the same organization's CVR number as reflected in the access token's CVR claim.