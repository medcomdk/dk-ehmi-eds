Instance: EHMIAuditEventExample-1.1-msg-created
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = "1.1"
* type.code =  "EHMI-messaging"
* subtype.code =  "msg-created"
* outcome.value = "0"
* agent[Sender].type.coding.code =  "SENDER"
* agent[Sender].name ="Aarhus Kommune"
* agent[Sender].requestor = true
* agent[Sender].who[SOR].type = "SOR"
* agent[Sender].who[SOR].identifier = "SOR1234"
* agent[Sender].who[GLN].type = "GLN"
* agent[Sender].who[GLN].identifier = "GLN1234"
* agent[Receiver].type.coding.code =  "RECEIVER"
* agent[Receiver].name ="Løgten Lægehus"
* agent[Receiver].requestor = false
* agent[Receiver].who[SOR].type = "SOR"
* agent[Receiver].who[SOR].identifier = "SOR12345"
* agent[Receiver].who[GLN].type = "GLN"
* agent[Receiver].who[GLN].identifier = "GLN12345"
* agent[Device].type.coding.code =  "DEVICE"
* agent[Device].name ="Løgten Lægehus"
* agent[Device].requestor = false

/*
Instance: EHMIAuditEventExample-1.2-msg-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 1.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  SENDER

Instance: EHMIAuditEventExamplemsg-2.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 2.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-2.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 2.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-3.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 3.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-3.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 3.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-4.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 4.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-4.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 4.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  AP

Instance: EHMIAuditEventExamplemsg-5.1-received
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 5.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-5.2-sent
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 5.2
* type =  EHMI-messaging
* subtype =  msg-sent
* outcome = 0
* agent.type =  MSH

Instance: EHMIAuditEventExamplemsg-6.1-finalized
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 6.1
* type =  EHMI-messaging
* subtype =  msg-received
* outcome = 0
* agent.type =  RECEIVER

Instance: EHMIAuditEventExamplemsg-6.1-finalized
InstanceOf: EHMIAuditEvent
Description: "An example of an EHMIAuditEvent."
* id = 6.2
* type =  EHMI-messaging
* subtype =  msg-finalized
* outcome = 0
* agent.type =  RECEIVER
*/