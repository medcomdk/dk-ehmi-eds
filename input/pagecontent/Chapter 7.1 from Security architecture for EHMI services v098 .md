## EHMI Delivery Status (EDS)

In EHMI, the following *stations* participate in point-to-point message transmissions: professional systems, message-service handlers, and access points.

All stations involved in an EHMI message transmission must register their message handling in the EHMI Selivery Status service (EDS) as described in the FHIR implementation guide at https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/.

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

3.  At the system level for the station’s own device_id (e.g., allowing professional systems to enable users to view the status of messages sent from their organization).
4.  At the citizen level for their own CPR number.
5.  At the superuser/supporter level for the CVR number of the user’s organization. Access at this level requires a specific role, assigned via the SEB User Catalog.

### Enrollment/Whitelisting of System Clients in EDS (For Registration, Search, and Lookup)

Stations registering delivery statuses and searching or reading their own registrations are enrolled as system clients.

In addition to the elements described in section 3.3 (Client Enrollment) of the general ‘Sikkerhedsmodel’, the following must be specified during the enrollment of system clients:

-   The *device_id* with which the station is registered in the EER.
-   A list of *organizational contexts* the station sends/receives messages for, specified as SOR code and GLN location number.

The following is used as the scope element during enrollment:

**Metadata for an EDS System Client  
**In addition to the metadata elements described in section 3.3.1 of the general ‘Sikkerhedsmodel’, the following metadata elements must be specified for system clients:

| **Metadata Element** | **Description**                                                                                                                                               |
|----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ehmi:eer:device_id   | Specifies the device_id the station is registered with in the EER.                                                                                            |
| ehmi:org_context     | An array of JSON objects consisting of name (organization name), sor (SOR code), and gln (location number) for the which the station sends/receives messages. |

Example metadata document for an EDS system client:

### Enrollment/Whitelisting of User Clients in EDS (For Search and Lookup)

User clients used by citizens or superusers/supporters for searching and reading delivery status registrations are only enrolled with the elements described in section 3.3 (Client Enrollment) of the general ‘Sikkerhedsmodel’.

The following is used as the scope element during enrollment:

**Metadata for an EDS User Client for Search and Lookup**  
  
For EDS user clients, only the metadata elements described in section 3.3.1 of the general ‘Sikkerhedsmodel’ are specified.

Example metadata document for an EDS user client:

### Calls to the Token Endpoint

When calling EDS, organization-specific tokens are utilized for registrations. This means that the individual stations’ system clients, which operate in multiple organizational contexts, must retrieve a separate token from the Authorization Server for each SOR/GLN context.

To obtain an access token for EDS, the following scopes are used:

| **Scope**             | **Description**                                                                                                    |
|-----------------------|--------------------------------------------------------------------------------------------------------------------|
| EDS                   | Indicates that the client is requesting an access token for EDS.                                                   |
| system/AuditEvent.crs | (For system clients only) Specifies that the token will be used to register/read/search delivery status resources. |
| user/AuditEvent.rs    | (For user clients only) Specifies that the token will be used to read/search delivery status resources.            |
| SOR:\<XXXXX\>         | (For system clients and for registrations only) Specifies the organization’s SOR code.                             |
| GLN:\<YYYYY\>         | (For system clients and for registrations only) Specifies the organization’s GLN location number.                  |

Example scope for a system client:   
  
Example call to the Token Endpoint using the above scope:

**Validation at the Authorization Server  
**The call to the Token Endpoint is validated by the Authorization Server, which verifies the client’s TLS client certificate and checks that the client is enrolled/whitelisted with the specified scopes.

For system clients requesting a token to perform *registrations*, the Authorization Server maps the client_id from the call to the registered device_id and verifies that the client is whitelisted for:

-   The EDS service,
-   The specified “create” operation for the AuditEvent resource, and
-   The specified organizational context, in the form of the SOR code and GLN location number.

For access tokens issued to system clients performing *registrations* in EDS, the Authorization Server embeds the device_id and the organizational context as additional claims in the token in the following format:

| **Claim**          | **Beskrivelse**                                                                                                                                                  |
|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ehmi:eer:device_id | An indication of the device_id with which the station is registered in the EER.                                                                                  |
| ehmi:org_context   | The current organizational context of the station, specified as a JSON object consisting of name (organization name), sor (SOR code), and gln (location number). |

### Calls to EDS

Calls to EDS are made as described in the general security model, using REST calls over mutual TLS (two-way TLS), with the access token (which is sender-constrained) included in an HTTP header.

An example of a system client’s create call to EDS with the AuditEvent resource provided as a JSON object:

**Access Control in EDS  
**The delivery status service (EDS) validates the following:

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

# Referencer

-   [BCP195] ”BCP 195”, <https://www.rfc-editor.org/info/bcp195>
-   [CORS.Protocol] ”CORS Protocol”, [https://fetch.spec.whatwg.org/\#http-cors-protocol](https://fetch.spec.whatwg.org/#http-cors-protocol)
-   [EHMI] ”Ny infrastruktur (EHMI)”, https://medcom.dk/projekter/kommunale-proevesvar-paa-ny-infrastruktur/kommunale-proevesvar-ny-infrastruktur-ehmi/
-   [FAPI] ”FAPI 2.0 Security Profile”, <https://openid.net/specs/fapi-security-profile-2_0-04.html>
-   [HEART] ”Health Relationship Trust Profile for OAuth 2.0”, <https://openid.net/specs/openid-heart-oauth2-1_0.html>
-   [IETF-RFC] ”The Internet Engineering Task Force (IETF) - RFCs”, <https://www.ietf.org/standards/rfcs/>

    [IDWS] “OIO Identity Based Web Services 1.2 (OIO IDWS)”, <https://digst.dk/it-loesninger/standarder/oio-identity-based-web-services-12-oio-idws/>

-   [I-D.ietf-oauth-security-topics], “OAuth 2.0 Security Best Current Practice”, <https://www.ietf.org/archive/id/draft-ietf-oauth-security-topics-21.txt>
-   [iGOV-OAuth] “International Government Assurance Profile (iGov) for OAuth 2.0”, <https://openid.net/specs/openid-igov-oauth2-1_0.html>
-   [iGOV-OIDC] “International Government Assurance Profile (iGov) for OpenID Connect 1.0”, <https://openid.net/specs/openid-igov-openid-connect-1_0.html>
-   [JTP-H] “JWT Token Profile for Healthcare (JTP-H)”

    [JWKS] “JSON Web Key (JWK)”, <https://datatracker.ietf.org/doc/html/rfc7517>

-   [JWT] “JSON Web Token (JWT)”, <https://datatracker.ietf.org/doc/html/rfc7519>
-   [NSIS] “National Standard for Identiteters Sikringsniveauer”, <https://digst.dk/it-loesninger/standarder/nsis/>
-   [OAuth] “The OAuth 2.0 Authorization Framework”, <https://datatracker.ietf.org/doc/html/rfc6749>
-   [OAuth-DCR] ”OAuth 2.0 Dynamic Client Registration Protocol”, <https://datatracker.ietf.org/doc/html/rfc7591>

    [OAuth-DPOP] “OAuth 2.0 Demonstrating Proof of Possession (DPoP)”, <https://datatracker.ietf.org/doc/html/rfc9449>

    [OAuth-MTLS] “OAuth 2.0 Mutual-TLS Client Authentication and Certificate-Bound Access Tokens”, <https://datatracker.ietf.org/doc/html/rfc8705>

-   [OAuth-PAR] ”OAuth 2.0 Pushed Authorization Requests”, <https://datatracker.ietf.org/doc/html/rfc9126>

    [OAuth-PKCE] “Proof Key for Code Exchange by OAuth Public Clients”, <https://datatracker.ietf.org/doc/html/rfc7636>

-   [OAuth-TKEX] ”OAuth 2.0 Token Exchange”, <https://www.rfc-editor.org/rfc/rfc8693>
-   [OCES] “OCES (Offentlige certifikater til Elektronisk Service)”, <https://certifikat.gov.dk/politikker.for.tillidstjenester/> og <https://mitid-erhverv.dk/avanceret/certifikater/>
-   [OIDC] ”OpenID Connect Core 1.0”, <https://openid.net/specs/openid-connect-core-1_0.html>
-   [OIO-OIDC] “OIO Open ID Connect Profiles Version 0.91”, <https://digst.dk/media/24669/oio-oidc-profiles-v091.pdf>

    [preload] “HSTS Preload List Submission”, <https://hstspreload.org/>

-   [RFC6797] “HTTP Strict Transport Security (HSTS)”, <https://datatracker.ietf.org/doc/html/rfc6797>
-   [RFC8414] “OAuth 2.0 Authorization Server Metadata”, <https://datatracker.ietf.org/doc/html/rfc8414>
-   [RFC8659] “DNS Certification Authority Authorization (CAA) Resource Record”, <https://datatracker.ietf.org/doc/html/rfc8659>
-   [RFC8725] “JSON Web Token Best Current Practices”, <https://datatracker.ietf.org/doc/html/rfc8725>
-   [RFC9207] “OAuth 2.0 Authorization Server Issuer Identification”, <https://datatracker.ietf.org/doc/html/rfc9207>
-   [RFC9525] “Service Identity in TLS”, <https://datatracker.ietf.org/doc/html/rfc9525>
-   [PSD 2] ”PSD 2 Direktiv”, <https://www.finanstilsynet.dk/Lovgivning/Ny_EU_lovsamling/PSD-2>
-   [SMART] ”SMART App Launch 2.2.0”, <http://hl7.org/fhir/smart-app-launch/index.html>
-   [WS-Trust] “WS-Trust 1.4”, <https://docs.oasis-open.org/ws-sx/ws-trust/v1.4/errata01/os/ws-trust-1.4-errata01-os-complete.html>
