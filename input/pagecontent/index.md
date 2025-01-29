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

EDS is used in the EHMI messaging flow like above.

In a more technical outline of the above, it is presented here in a sequence diagram:

<img src="./ehmi-EDS-FlowCalls.png" alt="EHMI Delivery Status (EDS) - sequence diagram" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

<br/>

Calls to EDS are produced in different scenarios basically as shown below. 
For each scenario there are 2 examples which opens in a new window,"Graphical view" and "Raw server view". Please be aware that it can take a while to open, as it calls an external server to render the fhir examples. The last view, "Raw IG view" opens the page in this IG, where the example is shown in ordinary IG-manner.
- "Raw IG view" is as explained above the raw IG manner look of an example
- "Raw server view" opens a call to a HAPI FHIR server, which produces the get operation on the server for that particular instance
- "Graphical view" opens an application called vhewer.com, which produces a raw graphical context for the example. In the background it runs the same call as the "Raw server view" does, just producing a more human friendly view to the user

**1. Scenarios for the primary MedCom message and the corresponding MedCom Acknowledgement message in EHMI**

1. 
  - 1.1 When a message is created and sent in an EUA (The user has hit the "sent button") <br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">"Graphical view" example: EDS-PDS-01.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">"Raw server view" example: EDS-PDS-01.1</a> ¤ <a href="AuditEvent-EDS-PDS-01.1.html">"Raw IG view" example: EDS-PDS-01.1</a>
  <!--
  - 1.2. When the message is actually sent by the EUA <br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.2" target="_blank">"Graphical view" example: EDS-PDS-01.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.2" target="_blank">"Raw server view" example: EDS-PDS-01.2</a> ¤ <a href="AuditEvent-EDS-PDS-01.2.html">"Raw IG view" example: EDS-PDS-01.2</a>
  -->
2. 
  - 2.1 When the message is received by the sending MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.1" target="_blank">"Graphical view" example: EDS-PDS-02.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.1" target="_blank">"Raw server view" example: EDS-PDS-02.1</a> ¤ <a href="AuditEvent-EDS-PDS-02.1.html">"Raw IG view" example: EDS-PDS-02.1</a>
  - 2.2 When the message is actually sent again by the sending MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.2" target="_blank">"Graphical view" example: EDS-PDS-02.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.2" target="_blank">"Raw server view" example: EDS-PDS-02.2</a> ¤ <a href="AuditEvent-EDS-PDS-02.2.html">"Raw IG view" example: EDS-PDS-02.2</a>
3. 
  - 3.1 When the message is received by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.1" target="_blank">"Graphical view" example: EDS-PDS-03.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.1" target="_blank">"Raw server view" example: EDS-PDS-03.1</a> ¤ <a href="AuditEvent-EDS-PDS-03.1.html">"Raw IG view" example: EDS-PDS-03.1</a>
  - 3.2 When the message is actually sent again by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.2" target="_blank">"Graphical view" example: EDS-PDS-03.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.2" target="_blank">"Raw server view" example: EDS-PDS-03.2</a> ¤ <a href="AuditEvent-EDS-PDS-03.2.html">"Raw IG view" example: EDS-PDS-03.2</a>
4. 
  - 4.1 When the message is received by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.1" target="_blank">"Graphical view" example: EDS-PDS-04.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.1" target="_blank">"Raw server view" example: EDS-PDS-04.1</a> ¤ <a href="AuditEvent-EDS-PDS-04.1.html">"Raw IG view" example: EDS-PDS-04.1</a>
  - 4.2 When the message is actually sent again by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.2" target="_blank">"Graphical view" example: EDS-PDS-04.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.2" target="_blank">"Raw server view" example: EDS-PDS-04.2</a> ¤ <a href="AuditEvent-EDS-PDS-04.2.html">"Raw IG view" example: EDS-PDS-04.2</a>
5. 
  - 5.1 When the message is received by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.1" target="_blank">"Graphical view" example: EDS-PDS-05.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.1" target="_blank">"Raw server view" example: EDS-PDS-05.1</a> ¤ <a href="AuditEvent-EDS-PDS-05.1.html">"Raw IG view" example: EDS-PDS-05.1</a>
  - 5.2 When the message is actually sent again by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.2" target="_blank">"Graphical view" example: EDS-PDS-05.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.2" target="_blank">"Raw server view" example: EDS-PDS-05.2</a> ¤ <a href="AuditEvent-EDS-PDS-05.2.html">"Raw IG view" example: EDS-PDS-05.2</a>
6. 
<!--
  - 6.1 When the message is received by the receiving EUA<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.1" target="_blank">"Graphical view" example: EDS-PDS-06.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.1" target="_blank">"Raw server view" example: EDS-PDS-06.1</a> ¤ <a href="AuditEvent-EDS-PDS-06.1.html">"Raw IG view" example: EDS-PDS-06.1</a>
  -->
  - 6.2 When the message is actually received and finalized by the receiving EUA<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.2" target="_blank">"Graphical view" example: EDS-PDS-06.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.2" target="_blank">"Raw server view" example: EDS-PDS-06.2</a> ¤ <a href="AuditEvent-EDS-PDS-06.2.html">"Raw IG view" example: EDS-PDS-06.2</a>

<br/>

**2. Scenarios for the ehmiSBDH Acknowledgement in EHMI**

7. 
  - 7.1 When an ehmiSBDH envelope has been received in the receiving MSH (at 5.1 in the above use case) and the Receiving MSH creates and sends an ehmiSBDH Acknowledgement<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-07.1" target="_blank">"Graphical view" example: EDS-PDS-07.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-07.1" target="_blank">"Raw server view" example: EDS-PDS-07.1</a> ¤ <a href="AuditEvent-EDS-PDS-07.1.html">"Raw IG view" example: EDS-PDS-07.1</a>
  <!--
  - 7.2 When an ehmiSBDH envelope has been sent in the receiving MSH <br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-07.2" target="_blank">"Graphical view" example: EDS-PDS-07.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-7.2" target="_blank">"Raw server view" example: EDS-PDS-07.2</a> ¤ <a href="AuditEvent-EDS-PDS-07.2.html">"Raw IG view" example: EDS-PDS-07.2</a>
  -->
8. 
  - 8.1 When the ehmiSBDH Acknowledgement is received by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.1" target="_blank">"Graphical view" example: EDS-PDS-08.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.1" target="_blank">"Raw server view" example: EDS-PDS-08.1</a> ¤ <a href="AuditEvent-EDS-PDS-08.1.html">"Raw IG view" example: EDS-PDS-08.1</a>
  - 8.2 When the ehmiSBDH Acknowledgement is actually sent again by the sending AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.2" target="_blank">"Graphical view" example: EDS-PDS-08.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-08.2" target="_blank">"Raw server view" example: EDS-PDS-08.2</a> ¤ <a href="AuditEvent-EDS-PDS-08.2.html">"Raw IG view" example: EDS-PDS-08.2</a>
9. 
  - 9.1 When the ehmiSBDH Acknowledgement is received by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.1" target="_blank">"Graphical view" example: EDS-PDS-09.1</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.1" target="_blank">"Raw server view" example: EDS-PDS-09.1</a> ¤ <a href="AuditEvent-EDS-PDS-09.1.html">"Raw IG view" example: EDS-PDS-09.1</a>
  - 9.2 When the ehmiSBDH Acknowledgement is actually sent again by the receiving AP<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.2" target="_blank">"Graphical view" example: EDS-PDS-09.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-09.2" target="_blank">"Raw server view" example: EDS-PDS-09.2</a> ¤ <a href="AuditEvent-EDS-PDS-09.2.html">"Raw IG view" example: EDS-PDS-09.2</a>
10. 
<!--
  - 10.1 When the ehmiSBDH Acknowledgement is received by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-10.2" target="_blank">"Graphical view" example: EDS-PDS-10.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">"Raw server view" example: EDS-PDS-01.1</a> ¤ <a href="AuditEvent-EDS-PDS-10.1.html">"Raw IG view" example: EDS-PDS-10.1</a>
-->
  - 10.2 When the ehmiSBDH Acknowledgement is received and finalized by the receiving MSH<br/><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-10.2" target="_blank">"Graphical view" example: EDS-PDS-10.2</a> ¤ <br/> <a href="https://hapifhir.ehmi.medcom.t0.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-10.2" target="_blank">"Raw server view" example: EDS-PDS-10.2</a> ¤ <a href="AuditEvent-EDS-PDS-10.2.html">"Raw IG view" example: EDS-PDS-10.2</a>


<br/>
As the EUA, MSH and AP can be built and hosted together in various ways, this is just the maximum possible scenarios, and the real scenarios will most likely be less than shown here.

### Security for the calls to EDS

The calls for EDS are always produced in a security context. 

[The calls for EDS are described here](security-EDS-english.html)
