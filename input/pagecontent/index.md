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

**1. Scenarios for the primary MedCom message and the corresponding MedCom Acknowledgement message in EHMI**

1. When a message is created in an EUA (The user has hit the "sent button") or an ehmiSBDH_Ack has been initiated in a MSH. <br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">Example: EDS-PDS-01.1</a>
2. When the message is actually sent by the EUA <br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.2" target="_blank">Example: EDS-PDS-01.2</a>
3. When the message is received by the sending MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.1" target="_blank">Example: EDS-PDS-02.1</a>
4. When the message is actually sent again by the sending MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.2" target="_blank">Example: EDS-PDS-02.2</a>
5. When the message is received by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.1" target="_blank">Example: EDS-PDS-03.1</a>
6. When the message is actually sent again by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.2" target="_blank">Example: EDS-PDS-03.2</a>
7. When the message is received by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.1" target="_blank">Example: EDS-PDS-04.1</a>
8. When the message is actually sent again by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.2" target="_blank">Example: EDS-PDS-04.2</a>
9. When the message is received by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.1" target="_blank">Example: EDS-PDS-06.1</a>
10. When the message is actually sent again by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.2" target="_blank">Example: EDS-PDS-06.2</a>
11. When the message is received by the receiving EUA<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-07.1" target="_blank">Example: EDS-PDS-07.1</a>
12. When the message is actually finalized by the receiving EUA<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-07.2" target="_blank">Example: EDS-PDS-07.2</a>

<br/>

**2. Scenarios for the ehmiSBDH Acknowledgement in EHMI**

1. When an ehmiSBDH envelope has been received in the receiving MSH (at 9. in the above use case) and the Receiving MSH creates an ehmiSBDH Acknowledgement<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.1" target="_blank">Example: EDS-PDS-08.1</a>
2. When the ehmiSBDH Acknowledgement is received by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.2" target="_blank">Example: EDS-PDS-08.2</a>
3. When the ehmiSBDH Acknowledgement is actually sent again by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.1" target="_blank">Example: EDS-PDS-09.1</a>
4. When the ehmiSBDH Acknowledgement is received by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.2" target="_blank">Example: EDS-PDS-09.2</a>
5. When the ehmiSBDH Acknowledgement is actually sent again by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-10.1" target="_blank">Example: EDS-PDS-10.1</a>
6. When the ehmiSBDH Acknowledgement is received by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-10.2" target="_blank">Example: EDS-PDS-10.2</a>

<br/>
As the EUA, MSH and AP can be built and hosted together in various ways, this is just the maximum possible scenarios, and the real scenarios will most likely be less than shown here.

### Security for the calls to EDS

The calls for EDS are always produced in a security context. 

[The calls for EDS are described here](security-EDS-english.md)
