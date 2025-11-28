## EHMI Delivery Status (EDS)

<br/>

The EHMI Delivery Status (EDS) Implementation Guide is a Content Profile that defines some basic and reusable logging patterns based on the FHIR AuditEvent Resource, that is used between an EDS device client and the EDS server. 

EDS is inspired by IHE Basic Audit Log Patterns (IHE BALP) Implementation Guide, which is a Content Profile that defines some basic and reusable AuditEvent patterns. 

A focus is on enabling Privacy centric AuditEvent logs that hold well-formed indication of message communication around a Patient, when they are the subject of a messaging event being recorded on the EDS Server. 

<img src="./EHMI_Pixi_EDS.jpg" alt="EHMI Delivery Status (EDS)" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

<br/>

EDS is using some basic abbreviations throughout the specification, the most common are:

 - EUA = End User Application
 - MSH = Message Service Handler
 - AP = Access Point (eDelivery)

EDS is used in the EHMI messaging flow like above.

In a more technical outline of the above, it is presented here in a sequence diagram:

<img src="./ehmi-EDS-FlowCalls.png" alt="EHMI Delivery Status (EDS) <tr><td>sequence diagram" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px">

<br/>

Calls to EDS are produced in different scenarios basically as shown graphically above and in example instances below. 

For each scenario there are 2 examples which opens in a new window,"Graphical view" and "Raw server view". Please be aware that it can take a while to open, as it calls an external server to render the fhir examples. The last view, "Raw IG view" opens the page in this IG, where the example is shown in ordinary IG-manner.
 - "Raw IG view" is as explained above the raw IG manner look of an example
 - "Raw server view" opens a call to a HAPI FHIR server, which produces the get operation on the server for that particular instance
 - "Graphical view" opens an application called vhewer.com, which produces a raw graphical context for the example. In the background it runs the same call as the "Raw server view" does, just producing a more human friendly view to the user

### 1. EDS scenarios for the primary MedCom message in EHMI

<table border="1" width="100%">
<tr><th width="3%">#</th><th width="61%">usecase</th><th width="12%">Graphical View</th><th width="12%">Raw view(server)</th><th width="12%">Raw View(IG)</th></tr>
<tr>
    <td>1.1</td>
    <td>When a message is created and sent in an EUA (The user has hit the "sent button") </td>
    <td><a href="https://vhewer.com/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">EDS-PDS-01.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-01.1" target="_blank">EDS-PDS-01.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-01.1.html" target="_blank">EDS-PDS-01.1</a></td>
</tr>
<tr>
    <td>2.1</td>
    <td>When the message is received by the sending MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.1" target="_blank">EDS-PDS-02.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.1" target="_blank">EDS-PDS-02.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-02.1.html" target="_blank">EDS-PDS-02.1</a></td>
</tr>
<tr>
    <td>2.2</td>
    <td>When the message is actually sent again by the sending MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.2" target="_blank">EDS-PDS-02.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-02.2" target="_blank">EDS-PDS-02.2</a></td>
    <td><a href="AuditEvent-EDS-PDS-02.2.html" target="_blank">EDS-PDS-02.2</a></td>
</tr>
<tr>
    <td>3.1</td>
    <td>When the message is received by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.1" target="_blank">EDS-PDS-03.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.1" target="_blank">EDS-PDS-03.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-03.1.html" target="_blank">EDS-PDS-03.1</a></td>
</tr>
<tr>
    <td>3.2</td>
    <td>When the message is actually sent again by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.2" target="_blank">EDS-PDS-03.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-03.2" target="_blank">EDS-PDS-03.2</a></td>
    <td><a href="AuditEvent-EDS-PDS-03.2.html" target="_blank">EDS-PDS-03.2</a></td>
</tr>
<tr>
    <td>4.1</td>
    <td>When the message is received by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.1" target="_blank">EDS-PDS-04.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.1" target="_blank">EDS-PDS-04.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-04.1.html" target="_blank">EDS-PDS-04.1</a></td>
</tr>
<tr>
    <td>4.2</td>
    <td>When the message is actually sent again by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.2" target="_blank">EDS-PDS-04.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-04.2" target="_blank">EDS-PDS-04.2</a></td>
    <td><a href="AuditEvent-EDS-PDS-04.2.html" target="_blank">EDS-PDS-04.2</a></td>
</tr>
<tr>
    <td>5.1</td>
    <td>When the message is received by the receiving MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.1" target="_blank">EDS-PDS-05.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.1" target="_blank">EDS-PDS-05.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-05.1.html" target="_blank">EDS-PDS-05.1</a></td>
</tr>
<tr>
    <td>5.2</td>
    <td>When the message is actually sent again by the receiving MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.2" target="_blank">EDS-PDS-05.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-05.2" target="_blank">EDS-PDS-05.2</a></td>
    <td><a href="AuditEvent-EDS-PDS-05.2.html" target="_blank">EDS-PDS-05.2</a></td>
</tr>
<tr>
    <td>6.1</td>
    <td>When the message is actually received and finalized by the receiving EUA</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.1" target="_blank">EDS-PDS-06.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-PDS-06.1" target="_blank">EDS-PDS-06.1</a></td>
    <td><a href="AuditEvent-EDS-PDS-06.1.html" target="_blank">EDS-PDS-06.1</a></td>
</tr>
</table>

### 2. EDS scenarios for the ehmiSBDH Acknowledgement in EHMI

<table border="1" width="100%">
<tr><th width="3%">#</th><th width="61%">usecase</th><th width="12%">Graphical View</th><th width="12%">Raw view(server)</th><th width="12%">Raw View(IG)</th></tr>
<tr>
    <td>7.1</td>
    <td>When an ehmiSBDH envelope has been received in the receiving MSH (at 5.1 in the above use case)<br/>and the Receiving MSH creates and sends an ehmiSBDH Acknowledgement</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-07.1" target="_blank">EDS-BDS-07.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-07.1" target="_blank">EDS-BDS-07.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-07.1.html" target="_blank">EDS-BDS-07.1</a></td>
</tr>
<tr>
    <td>8.1</td>
    <td>When the ehmiSBDH Acknowledgement is received by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-08.1" target="_blank">EDS-BDS-08.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-08.1" target="_blank">EDS-BDS-08.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-08.1.html" target="_blank">EDS-BDS-08.1</a></td>
</tr>
<tr>
    <td>8.2</td>
    <td>When the ehmiSBDH Acknowledgement is actually sent again by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-08.2" target="_blank">EDS-BDS-08.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-08.2" target="_blank">EDS-BDS-08.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-08.2.html" target="_blank">EDS-BDS-08.2</a></td>
</tr>
<tr>
    <td>9.1</td>
    <td>When the ehmiSBDH Acknowledgement is received by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-09.1" target="_blank">EDS-BDS-09.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-09.1" target="_blank">EDS-BDS-09.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-09.1.html" target="_blank">EDS-BDS-09.1</a></td>
</tr>
<tr>
    <td>9.2</td>
    <td>When the ehmiSBDH Acknowledgement is actually sent again by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-09.2" target="_blank">EDS-BDS-09.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-09.2" target="_blank">EDS-BDS-09.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-09.2.html" target="_blank">EDS-BDS-09.2</a></td>
</tr>
<tr>
    <td>10.1</td>
    <td>When the ehmiSBDH Acknowledgement is received and finalized by the receiving MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-10.1" target="_blank">EDS-BDS-10.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-10.1" target="_blank">EDS-BDS-10.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-10.1.html" target="_blank">EDS-BDS-10.1</a></td>
</tr>
</table>

### 3. EDS scenarios for the corresponding MedCom Acknowledgement message in EHMI

<table border="1" width="100%">
<tr><th width="3%">#</th><th width="61%">usecase</th><th width="12%">Graphical View</th><th width="12%">Raw view(server)</th><th width="12%">Raw View(IG)</th></tr>
<tr>
    <td>11.1</td>
    <td>When an Acknowledgement message is created and sent in an EUA (Automatically) </td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-11.1" target="_blank">EDS-BDS-11.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-11.1" target="_blank">EDS-BDS-11.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-11.1.html" target="_blank">EDS-BDS-11.1</a></td>
</tr>
<tr>
    <td>12.1</td>
    <td>When the Acknowledgement message is received by the sending MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-12.1" target="_blank">EDS-BDS-12.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-12.1" target="_blank">EDS-BDS-12.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-12.1.html" target="_blank">EDS-BDS-12.1</a></td>
</tr>
<tr>
    <td>12.2</td>
    <td>When the Acknowledgement message is actually sent again by the sending MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-12.2" target="_blank">EDS-BDS-12.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-12.2" target="_blank">EDS-BDS-12.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-12.2.html" target="_blank">EDS-BDS-12.2</a></td>
</tr>
<tr>
    <td>13.1</td>
    <td>When the Acknowledgement message is received by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-13.1" target="_blank">EDS-BDS-13.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-13.1" target="_blank">EDS-BDS-13.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-13.1.html" target="_blank">EDS-BDS-13.1</a></td>
</tr>
<tr>
    <td>13.2</td>
    <td>When the Acknowledgement message is actually sent again by the sending AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-13.2" target="_blank">EDS-BDS-13.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-13.2" target="_blank">EDS-BDS-13.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-13.2.html" target="_blank">EDS-BDS-13.2</a></td>
</tr>
<tr>
    <td>14.1</td>
    <td>When the Acknowledgement message is received by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-14.1" target="_blank">EDS-BDS-14.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-14.1" target="_blank">EDS-BDS-14.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-14.1.html" target="_blank">EDS-BDS-14.1</a></td>
</tr>
<tr>
    <td>14.2</td>
    <td>When the Acknowledgement message is actually sent again by the receiving AP</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-14.2" target="_blank">EDS-BDS-14.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-14.2" target="_blank">EDS-BDS-14.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-14.2.html" target="_blank">EDS-BDS-14.2</a></td>
</tr>
<tr>
    <td>15.1</td>
    <td>When the Acknowledgement message is received by the receiving MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-15.1" target="_blank">EDS-BDS-15.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-15.1" target="_blank">EDS-BDS-15.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-15.1.html" target="_blank">EDS-BDS-15.1</a></td>
</tr>
<tr>
    <td>15.2</td>
    <td>When the Acknowledgement message is actually sent again by the receiving MSH</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-15.2" target="_blank">EDS-BDS-15.2</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-15.2" target="_blank">EDS-BDS-15.2</a></td>
    <td><a href="AuditEvent-EDS-BDS-15.2.html" target="_blank">EDS-BDS-15.2</a></td>
</tr>
<tr>
    <td>16.1</td>
    <td>When the Acknowledgement message is actually received and finalized by the receiving EUA</td>
    <td><a href="https://vhewercom/display-product?url=https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-16.1" target="_blank">EDS-BDS-16.1</a></td>
    <td><a href="https://hapifhir.ehmi.medcom.t1.hosting.kitkube.dk/fhir/AuditEvent/EDS-BDS-16.1" target="_blank">EDS-BDS-16.1</a></td>
    <td><a href="AuditEvent-EDS-BDS-16.1.html" target="_blank">EDS-BDS-16.1</a></td>
</tr>
</table>

<br/>
As the EUA, MSH and AP can be built and hosted together in various ways, this is just the maximum possible scenarios, and the real scenarios will most likely be less than shown here.

## Security for the calls to EDS

The calls for EDS are always produced in a security context. 

[The calls for EDS are described here](security-english.html)
