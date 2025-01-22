## EHMI Delivery Status (EDS)

In EHMI, the following *stations* participate in point-to-point message transmissions: professional systems (EUA), message-service handlers (MSH), and access points (AP).

All stations involved in an EHMI message transmission must register their message handling in the EHMI Selivery Status service (EDS) as described in this FHIR implementation guide.

Stations are registered in the EHMI Endpoint Register (EER) and are assigned a unique *device_id* during this process.

As outlined in the FHIR implementation guide, delivery status is implemented as a profiling of the FHIR AuditEvent resource.

Delivery status contains sensitive personal information (such as the sender or recipient organization involved in the message transmission), and user access therefore requires an NSIS level of “Substantial.”

### EDS usecases

There are two primary use cases for the EHMI delivery status service:

1.  **Registration of delivery status:**

    Stations in an EHMI transmission individually *register delivery status* in EDS. Registration occurs at the system level, and stations can create delivery statuses for the organizational contexts (combinations of GLN numbers and SOR codes) they are whitelisted for.

2.  **Search and lookup functionality:**

    EDS provides an interface for searching and looking up message transmission statuses, either for track-and-trace purposes or troubleshooting.


These searches can be conducted:

1.  At the system level for the station’s own device_id (e.g., allowing professional systems to enable users to view the status of messages sent from their organization).
2.  At the citizen level for their own CPR number.
3.  At the superuser/supporter level for the CVR number of the user’s organization. Access at this level requires a specific role, assigned via the SEB User Catalog.

### Enrollment/Whitelisting of System Clients in EDS (For Registration, Search, and Lookup)

Stations registering delivery statuses and searching or reading their own registrations are enrolled as system clients.

In addition to the elements described in section 3.3 (Client Enrollment) __*of the general ‘Sikkerhedsmodel’*__, the following must be specified during the enrollment of system clients:

-   The *device_id* with which the station is registered in the EER.
-   A list of *organizational contexts* the station sends/receives messages for, specified as SOR code and GLN location number.

The following is used as the scope element during enrollment:

<table border="1">
    <tr>
        <td>EDS system/AuditEvent.crs</td>
    </tr>
</table>

**Metadata for an EDS System Client**

In addition to the metadata elements described in section 3.3.1 __*of the general ‘Sikkerhedsmodel’*__, the following metadata elements must be specified for system clients:

<table border="1">
    <tr>
        <th>Metadata Element</th> <th> Description </th>
    </tr>
    <tr>
        <td>ehmi:eer:device_id</td><td>Specifies the device_id the station is registered with in the EER.</td>
    </tr>
    <tr>
        <td>ehmi:org_context</td><td>An array of JSON objects consisting of name (organization name), sor (SOR code), and gln (location number) for the which the station sends/receives messages.</td>
    </tr>
</table>

__*Example metadata document for an EDS system client:*__

        {
        "token_endpoint_auth_method": "tls_client_auth",
        "grant_types": [
            "client_credentials"
        ],
        "client_name": "Lægesystem XYZ - Frederiksbjerg Lægehus",
        "scope": "EDS system/AuditEvent.crs",
        "contacts": [
            "døgnsupport@lægesystem-xyz.dk",
            "+45 1234 5678"
        ],
        "tls_client_auth_subject_dn": "subject=CN=Lægesystem XYZ’s systemcertifikat, serialNumber=UI:DK-O:G:a262681f-2e94-45c5-aaea-aad4e9bc5768, O=Leverandør af Lægesystem XYZ, organizationIdentifier=NTRDK-12345678, C=DK",
        "ehmi:eer:device_id": "c4b8d3ea-b187-426b-be77-bffd9f593d84",
        "ehmi:org_context": [
            {
            "name": "Frederiksbjerg Lægehus",
            "sor": "1216891000016007",
            "gln": "5790000135912"
            }
        ]
        }


### Enrollment/Whitelisting of User Clients in EDS (For Search and Lookup)

User clients used by citizens or superusers/supporters for searching and reading delivery status registrations are only enrolled with the elements described in section 3.3 (Client Enrollment) __*of the general ‘Sikkerhedsmodel’*__.

The following is used as the scope element during enrollment:

<table border="1">
    <tr>
        <td>EDS user/AuditEvent.rs</td>
    </tr>
</table>

**Metadata for an EDS User Client for Search and Lookup**  
  
For EDS user clients, only the metadata elements described in section 3.3.1 __*of the general ‘Sikkerhedsmodel’*__ are specified.

Example metadata document for an EDS user client:

    {
    "token_endpoint_auth_method": "tls_client_auth",
    "grant_types": [
        "authorization_code",
        "refresh_token"
    ],
    "client_name": "Lægesystem XYZ - Frederiksbjerg Lægehus",
    "scope": "EDS user/AuditEvent.rs",
    "contacts": [
        "døgnsupport@lægesystem-xyz.dk",
        "+45 1234 5678"
    ],
    "tls_client_auth_subject_dn": "subject=CN=Lægesystem XYZ’s systemcertifikat, serialNumber=UI:DK-O:G:a262681f-2e94-45c5-aaea-aad4e9bc5768, 
    O=Leverandør af Lægesystem XYZ, organizationIdentifier=NTRDK-12345678, C=DK",
    "redirect_uris": [
        "https://www.lægesystem-xyz.dk/lps-system/frederiksbjerg-lægehus"
    ]
    }


### Calls to the Token Endpoint

When calling EDS, organization-specific tokens are utilized for registrations. This means that the individual stations’ system clients, which operate in multiple organizational contexts, must retrieve a separate token from the Authorization Server for each SOR/GLN context.

To obtain an access token for EDS, the following scopes are used:

<table border="1">
    <tr>
        <th> Scope </th> <th> Description </th>
    </tr>
    <tr>
        <td>EDS</td><td>Indicates that the client is requesting an access token for EDS.</td>
    </tr>
    <tr>
        <td>system/AuditEvent.crs</td><td>(For system clients only) Specifies that the token will be used to register/read/search delivery status resources.</td>
    </tr>
    <tr>
        <td>user/AuditEvent.rs</td><td>(For user clients only) Specifies that the token will be used to read/search delivery status resources.</td>
    </tr>
    <tr>
        <td>SOR:&lt;XXXXX&gt;</td><td>(For system clients and for registrations only) Specifies the organization’s SOR code.</td>
    </tr>
    <tr>
        <td>GLN&lt;YYYYY&gt;</td><td>(For system clients and for registrations only) Specifies the organization’s GLN location number.</td>
    </tr>
</table>

Example scope for a system client:   
  
<table border="1">
    <tr>
        <td>EDS system/AuditEvent.crs SOR:306861000016006 GLN:5790000173372</td>
    </tr>
</table>

Example call to the Token Endpoint using the above scope:

        POST /token HTTP/1.1
        Host: authorization.sundhedsdatastyrelsen.dk
        Accept: */*
        Content-Type: application/x-www-form-urlencoded
        Content-Length: 156

        grant_type=client_credentials&scope=EDS%20system%2FAuditEvent.crs%20SOR%3A306861000016006%20GLN%3A5790000173372&client_id=0ba284d1-8974-4241-bce1-0498bc2d48ea


**Validation at the Authorization Server**

The call to the Token Endpoint is validated by the Authorization Server, which verifies the client’s TLS client certificate and checks that the client is enrolled/whitelisted with the specified scopes.

For system clients requesting a token to perform *registrations*, the Authorization Server maps the client_id from the call to the registered device_id and verifies that the client is whitelisted for:

-   The EDS service,
-   The specified “create” operation for the AuditEvent resource, and
-   The specified organizational context, in the form of the SOR code and GLN location number.

For access tokens issued to system clients performing *registrations* in EDS, the Authorization Server embeds the device_id and the organizational context as additional claims in the token in the following format:

<table border="1">
    <tr>
        <th> <b>Claim</b> </th> <th> Description </th>
    </tr>
    <tr>
        <td>ehmi:eer:device_id</td><td>An indication of the device_id with which the station is registered in the EER.</td>
    </tr>
    <tr>
        <td>ehmi:org_context</td><td>The current organizational context of the station, specified as a JSON object consisting of name (organization name), sor (SOR code), and gln (location number).</td>
    </tr>
</table>

### Calls to EDS

Calls to EDS are made as described in the general security model, using REST calls over mutual TLS (two-way TLS), with the access token (which is sender-constrained) included in an HTTP header.

An example of a system client’s create call to EDS with the AuditEvent resource provided as a JSON object:

        POST /base/AuditEvent HTTP/1.1
        Host: ehmi.medcom.dk
        Accept: application/fhir+json
        Content-Type: application/fhir+json
        Content-Length: 11996
        Authorization: Bearer eyJhb ... Dhi6g

        {
        "resourceType" : "AuditEvent",
        "id" : " cbcb0de9-105e-470a-8754-ffad3b581ed4",
        "meta" : {
            "profile" : [
            "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/EdsPatientDeliveryStatus"
            ]
        },

        ...

        }

**Access Control in EDS**

The delivery status service (EDS) validates the following:

1.  That the access token is valid and issued for EDS.
2.  The “sender-constrained” property is verified, meaning the TLS client certificate used by the client matches the certificate embedded in the access token.

For *registrations*, EDS also checks that:

1.  The access token contains the necessary scopes for the client to perform registrations in EDS.
2.  The SOR code, GLN location number, and device_id extracted from the access token match the information in the accompanying AuditEvent resource.**  
    **

For *searches and lookups*, EDS restricts access based on the following:

1.  *System clients representing a station in a message flow*: Access is limited to delivery status registrations created by the station’s own device_id.   
      
    EDS restricts access to delivery status registrations where the device_id matches the ehmi:eer:device_id claim in the access token.
2.  *Citizens accessing EDS via a user client*: Access is limited to delivery status registrations for the citizen’s own CPR number.  
      
    EDS restricts access to delivery status registrations where the patient’s CPR number matches the cpr claim in the access token.
3.  *Superusers/supporters accessing EDS via a user client*: Access is limited to registrations concerning their own organization at the CVR level.  
      
    EDS first verifies that the granting role assigned to the superuser/supporter is included in the role structure (priv claim) of the access token. EDS then restricts access to delivery status registrations where the organization’s CVR number matches the cvr claim in the access token.

