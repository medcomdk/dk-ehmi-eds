Instance: EdsBasicDeliveryStatusInstance
InstanceOf: EdsBasicDeliveryStatus
Description: "ChatGPT generated"
* id = "eds-basic-delivery-instance"
* recorded = "2024-04-19T12:00:00Z"

* type = $EhmiDeliveryStatusTypes#ehmiMessaging

// Message Created Subtype
* subtype[msg-created]
  * code = #msg-created
  * system = $EhmiDeliveryStatusSubTypes
  * display = "Message created"
* action = #C
* outcome = #0
* agent[ehmiSender]
  * type = $EhmiDeliveryStatusParticipationRoleType#ehmiSender
  * who
    * identifier
      * type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
      * value = "SenderOrgID"
  * name = "Sender Organization Name"
  * extension[eds-otherId]
    * valueIdentifier
      * system = "http://example.com/system"
      * value = "SenderOrgID"
  * requestor = true
* agent[ehmiReceiver]
  * type = $EhmiDeliveryStatusParticipationRoleType#ehmiReceiver
  * who
    * identifier
      * type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
      * value = "ReceiverOrgID"
  * name = "Receiver Organization Name"
  * extension[eds-otherId]
    * valueIdentifier
      * system = "http://example.com/system"
      * value = "ReceiverOrgID"
  * requestor = false
* source
  * observer
    * identifier
      * type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
      * value = "EDSClientDeviceID"
  * type
    * code = $EhmiDeliveryStatusSourceType#EUA
    * system = $EhmiDeliveryStatusSourceType
    * display = "EUA (End-user Application)"
* entity[ehmiMessage]
  * what.identifier
    * system = "http://example.com/system"
    * value = "MessageID"
  * detail[ehmiMessageType]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageType
    * valueString = "homecareobservation-message"
  * detail[ehmiMessageVersion]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageVersion
    * valueString = "1.0"
* entity[ehmiMessageEnvelope]
  * what.identifier
    * system = "http://example.com/system"
    * value = "MessageEnvelopeID"
  * detail[ehmiMessageEnvelopeType]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
    * valueString = "Bundle"
* entity[ehmiTransportEnvelope]
  * what.identifier
    * system = "http://example.com/system"
    * value = "TransportEnvelopeID"
  * detail[ehmiTransportEnvelopeType]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeType
    * valueString = "SBDH"
  * detail[ehmiTransportEnvelopeVersion]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiTransportEnvelopeVersion
    * valueString = "1.2"
