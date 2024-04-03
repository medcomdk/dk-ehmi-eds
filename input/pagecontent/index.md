# EHMI Delivery Status (EDS)

<br/>

The EHMI Delivery Status (EDS) Implementation Guide is a Content Profile that defines some basic and reusable logging patterns based on the FHIR AuditEvent Resource, that is used between an EDS device client and the EDS server. 

EDS is inspired by IHE Basic Audit Log Patterns (IHE BALP) Implementation Guide, which is a Content Profile that defines some basic and reusable AuditEvent patterns. 

A focus is on enabling Privacy centric AuditEvent logs that hold well-formed indication of message communication around a Patient, when they are the subject of messaging being recorded on the EDS Server. 

<br/>

![EHMI Delivery Status (EDS) (DA)](./eds1_1100x551.png "EHMI Delivery Status (EDS) (DA)")

<br/>

EDS is using some basic abbreviations throughout the specification, the most common are:

- EUA = End USer Application
- MSH = Message Service Handler
- AP = Access Point (eDelivery)

EDS is used in the EHMI messaging flow like above

EDS is producsed in different scenarios basically as shown below.

<br/>

1. When a message is created in an EUA (The user has hit the "sent button") or a SBDH_Ack has been initiated in a MSH
2. When the message is actually sent by the EUA
3. When the message is received by the sending MSH
4. When the message is actually sent again by the sending MSH
5. When the message is received by the sending AP
6. When the message is actually sent again by the sending AP
7. When the message is received by the receiving AP
8. When the message is actually sent again by the receiving AP
9. When the message is received by the receiving MSH
10. When the message is actually sent again by the receiving MSH
11. When the message is received by the receiving EUA
12. When the message is actually finalized by the receiving EUA

<br/>

As the EUA, MSH and AP can be built and hosted together in various ways, this is just the maximum possible scenarios, and the real scenarios will most likely by less than shown here.

<br/>