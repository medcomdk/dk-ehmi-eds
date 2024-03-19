# EHMI Delivery Status (EDS)

The EHMI Delivery Status (EDS) Implementation Guide is a Content Profile that defines some basic and reusable logging patterns based on the FHIR AuditEvent Resource, that is used between an EDS device client and the EDS server. 
EDS is based upon and inspired by IHE Basic Audit Log Patterns (IHE BALP) Implementation Guide, which is a Content Profile that defines some basic and reusable AuditEvent patterns. 

A focus is on enabling Privacy centric AuditEvent logs that hold well-formed indication of message communication around a Patient, when they are the subject of messaging being recorded on the EDS Server. 

EDS is using some basic abbreviations throughout the specification, the most common is:

- EUA = End USer Application

- MSH = Message Service Handler

- AP = Access Point (eDelivery)


EDS is used in different scenarios basically as shown below.

1. When a message is created in an EUA (The user has hit the "sent button")

2. When the message is actually sent by the EUA

3. When the message is received by the sending MSH

4. When the message is actually sent again by the sending MSH

5. When the message is received by the sending AP

6. When the message is actually sent again by the sending AP



![EHMI Delivery Status (EDS) (DA)](/input/pagecontent/eds1.png "EHMI Delivery Status (EDS) (DA)")

## Profiles

[EHMI Delivery Status (EDS)](https://build.fhir.org/ig/medcomdk/dk-ehmi-eds/profiles.html)

