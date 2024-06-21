Instance: msgCreatedInstance
InstanceOf: EdsBasicDeliveryStatus
// Description of the instance
Description: """Example instance for the Message Created subtype of EdsBasicDeliveryStatus
- ChatGPT generated"""
// Unique identifier for the instance
* id = "msg-created-instance"

// Type of the instance
* type = $EhmiDeliveryStatusTypes#ehmiMessaging

// Recorded timestamp of the event
* recorded = "2024-04-19T12:00:00Z"

// Subtype details for Message Created
* subtype[msg-created]
  * code = #msg-created
  * system = $EhmiDeliveryStatusSubTypes
  * display = "Message created"

// Action performed (in this case, Creation)
* action = #C

// Outcome of the event (Success or failure)
* outcome = #0

// Sender Agent details
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

// Receiver Agent details
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

// Source details
* source
  * type
    * code = $EhmiDeliveryStatusSourceType#EUA
    * system = $EhmiDeliveryStatusSourceType
    * display = "EUA (End-user Application)"
  * observer
    * identifier
      * type = $EhmiDeliveryStatusAgentWhoIdentifierTypes#SOR
      * value = "EDSClientDeviceID"

// Entity details for the message
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

// Entity details for the message envelope
* entity[ehmiMessageEnvelope]
  * what.identifier
    * system = "http://example.com/system"
    * value = "MessageEnvelopeID"
  * detail[ehmiMessageEnvelopeType]
    * type = $EhmiDeliveryStatusEntityDetailType#ehmiMessageEnvelopeType
    * valueString = "Bundle"

// Entity details for the transport envelope
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
