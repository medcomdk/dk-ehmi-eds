## 7.1	EHMI Delivery Status (EDS) 

In [EHMI], the following *stations* are included in point-to-point message-delivery: End User Applications (EUAs), message-service-handlers (MSHs) and access-points (APs). 

All stations involved in EHMI message-delivery must register their message-handling in EHMI Delivery Status (EDS) as described in [FHIR Implementation Guide](https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/). 

The stations are created in EHMI Endpoint Register (EER) and are assigned a unique *device_id*.

As stated in FHIR Implementation Guide, the delivery status is a profilering/profiling of the FHIR AuditEvent (*FORMATERING*) ressource.

Delivery status contains sensitive personal information/personfølsomme oplysninger (being the place of treatment/behandlingsstedet either as the sender or receiver of a message), and therefore the user access require a NSIS level ’Significant’.

### 7.1.1	EDS use cases
There are two main use cases regarding the use of delivery status service, EDS.

1.	Each station in EHMI message-delivery registers the delivery status in EDS. The registration happens on system level, and the individual stations can create a delivery status for the organizational contexts/organisationskontekster (combination of GLN numbers and SOR codes) for which they are whitelisted (see below).

2.	EDS provides an interface for searching and lookup/opslag, which can be used for track'n'trace of messages or for troubleshooting.
Searching and lookup can take place either at:
    1. System level for stations using their own device_id. (This way, for example, functionality can be established from end user applications, where users can search for the status of messages sent by themselves.)
    2.	Citizen level using CPR  
    3.	Super user/vendor (supporter) level using the CVR number of the users organization, and where the user is granted access via a special right (granted by SEB user catalogue)

### 7.1.2	Enrollment/whitelisting of system clients in EDS (for registration, search, and lookup)
Stations that register delivery status, and can search and read own registrations, are registered as system clients.
In addition to the elements described in section 3.3 Enrollment of clients, the following must be specified when enrolling system clients: 
- The *device_id* which the station is registered with in EER
- A list of *organizational contexts*, for which the station sends/receives messages in the form of SOR code and GLN location number

During enrollment, the following is specified as a scope element:

EDS system/AuditEvent.crs (*FORMATERING*)
 
(The abovementioned system/AuditEvent.crs (*FORMATERING*) syntax is based on the definition of scopes for FHIR ressources in [SMART].)
__Metadata for an EDS system client__

In addition to the metadata elements described in section 3.3.1 Metadata for clients, the following metadata elements must be specified for system clients. 

Metadata element | Description
-----------------|-------------
ehmi:eer:device_id|A specification of the device_id which the station is registered with in EER.
ehmi:org_context|An array of JSON objects consisting of name (organization name), sor (SOR code) and gln (location number) for which the station sends/receives messages.

Note that the intention is, that after the production pilot, the Authorization Server will instead make a post on a station's organizational contexts in EER Endpoint register and the explicit whitelisting will therefore cease to exist.

Example of a metadata document for an EDS system client:*(MANGLER EKSEMPEL)*

### 7.1.3	Enrollment/whitelisting of user clients (for search and lookup)
User clients, which are used by citizens or super-users/supporters to search for and read delivery-status registrations, are enroled only with the described elements in section 3.3 Enrollment of clients. 

During enrollment, the following is specified as a scope element:

EDS user//AuditEvent.rs (*FORMATERING*)
 
__Metadata for search and lookup for an EDS user client__

For EDS user clients, only the metadata described in section 3.3.1 Metadata for clients must be specified.

Example of a metadata document for an EDS user client: *(MANGLER EKSEMPEL)*

### 7.1.4	Token Endpoint call

In the approach to EDS, *registrations* are operated with organisation-specific tokens, i.e. the system clients of the individual stations which appear in several organizational contexts must pull a separate token from the Authorization Server for each SOR/GLN context.

In order to have an access token issued to access EDS, the following scopes are specified:
scope |	Beskrivelse
------|-------------
EDS|An indication of this is that the client wants an access token
system/AuditEvent.crs|(only for system clients) An indication that the token must be able to register/read/search delivery status resources (which are profiles of FHIR’s AuditEvent resource).
user/AuditEvent.rs|(only for user clients) An indication that the token must be able to read and search delivery status resources (which are profiles of FHIR’s AuditEvent resource).
SOR:'XXXXX'|(only for system clients and only for registrations) An indication of the organization's SOR code, where 'XXXXX' is set to the code.
GLN:'YYYYY'|(only for system clients and only for registrations) An indication of the organization's GLN location number, where 'YYYYY' is set to the location number.

(*FORMATERING BILLEDE*)

Example of a combined scope that is included in the call for a system client:

The example of a call to Token Endpoint with the above example scope (note that the call is made via 2-way TLS):

(*FORMATERING BILLEDE*)
 
**Valideringer af kaldet hos Authorization Server**

The call to the Token Endpoint is validated at the Authorization Server, which validates the client's TLS-client certificate and checks that the client is enrolled/whitelisted with the specified scopes. 

For system clients, who request a token to make *registrations*, the Authorization Serveren maps the *client_id* from the call to the registered device_id and validates that the client is whitelisted for both the EDS service, the specified ’create’ operation for the *AuditEvent* resource and the specified organizational context in the form of SOR code and GLN location number. 

For access tokens issued to system clients that make *registrations* in EDS, the Authorization Server embeds the device_id and the organizational context as additional claims in tokenet in the following form:

Claim|Description
-----|-----------
ehmi:eer:device_id|An indication of the device_id with which the station is registered in EER.
ehmi:org_context|The current organizational context for the station, specified as a JSON object consisting of *name* (organization name), *sor* (SOR code) and *GLN* (location number).

### 7.1.5	EDS call

Call to EDS is made as described in the general security model as a REST call over two-way TLS, with the access token (which is sender-constrained) i a HTTP header.

Example of a system client's ’create’ call to EDS with the AuditEvent resource specified as a JSON object:

(*FORMATERING BILLEDE*)
 
**EDS access control**

The delivery status service checks that the access token is both valid and issued to the EDS and validates the ’sender-contrained’ ability, i.e. validates that the TLS client certificate used by the client matches the certificate that was embedded in the access token. 

When *registering* delivery status, the service also checks that the token contains the necessary scopes for the client to make registrations in the EDS. EDS also checks wether the SOR code, GLN location number and device_id, which it can extract from the access token, match the information in the accompanying AuditEvent resource.

When *searching and reading*, the EDS service limits the approach:

1.	*For system clients who represent a station in a message flow*: For registrations made by the station's own device_id.

EDS limits the access to delivery status registrations that include the same device_id as shown in the access token's ehmi:eer:device_id claim.

2.	*For citizens who access EDS via a user client*: For registrations made on the citizen's own CPR number.

EDS limits the access to delivery status registrations that include the same patient CPR number as shown in the access token's cpr claim.

3.	*For super users/supporters who access EDS via a user client*: For registrations regarding own organization at CVR level.

First, EDS validates that the access-granting role that is assigned to super users/supporters appears from the access token's role structure in the priv claim. EDS then limits access to delivery status registrations that include the same organization's CVR number as shown in the access token's cvr claim.
