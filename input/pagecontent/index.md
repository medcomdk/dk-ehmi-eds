## EHMI Delivery Status (EDS)

<br/>

The EHMI Delivery Status (EDS) Implementation Guide is a Content Profile that defines some basic and reusable logging patterns based on the FHIR AuditEvent Resource, that is used between an EDS device client and the EDS server. 

EDS is inspired by IHE Basic Audit Log Patterns (IHE BALP) Implementation Guide, which is a Content Profile that defines some basic and reusable AuditEvent patterns. 

A focus is on enabling Privacy centric AuditEvent logs that hold well-formed indication of message communication around a Patient, when they are the subject of messaging being recorded on the EDS Server. 

<img src="./EHMI_Pixi_EDS.jpg" alt="EHMI Delivery Status (EDS)" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

<br/>

EDS is using some basic abbreviations throughout the specification, the most common are:

- EUA = End User Application
- MSH = Message Service Handler
- AP = Access Point (eDelivery)

EDS is used in the EHMI messaging flow like above

Calls to EDS is produced in different scenarios basically as shown below:

**Scenarios for the primary MedCom message and the corresponding MedCom Acknowledgement message in EHMI**

1. When a message is created in an EUA (The user has hit the "sent button") or an ehmiSBDH_Ack has been initiated in a MSH
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

**Scenarios for the ehmiSBDH Acknowledgement in EHMI**

1. When an ehmiSBDH envelope has been received in the receiving MSH (at 9. in the above use case) and the Receiving MSH creates an ehmiSBDH Acknowledgement
2. When the ehmiSBDH Acknowledgement is received by the sending AP
3. When the ehmiSBDH Acknowledgement is actually sent again by the sending AP
4. When the ehmiSBDH Acknowledgement is received by the receiving AP
5. When the ehmiSBDH Acknowledgement is actually sent again by the receiving AP
6. When the ehmiSBDH Acknowledgement is received by the receiving MSH

<br/>
As the EUA, MSH and AP can be built and hosted together in various ways, this is just the maximum possible scenarios, and the real scenarios will most likely be less than shown here.

### Security for the calls to EDS

The calls for EDS are always produced in a security context. 

[The calls for EDS are described here](security-EDS-english.md)
