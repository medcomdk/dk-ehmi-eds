{
  "resourceType": "AuditEvent",
  "type": {
    "coding": [
      {
        "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusTypes",
        "code": "ehmiMessaging",
        "display": "EHMI messaging event"
      }
    ]
  },
  "subtype": [
    {
      "code": "msg-created",
      "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusSubTypes",
      "display": "Message created"
    }
  ],
  "action": "C",
  "outcome": {
    "coding": [
      {
        "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/ValueSet/EhmiDeliveryStatusOutcomeValueSet",
        "code": "success"
      }
    ]
  },
  "agent": [
    {
      "type": {
        "coding": [
          {
            "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusParticipationRoleType",
            "code": "ehmiSender",
            "display": "Sender"
          }
        ]
      },
      "who": {
        "reference": "Organization/1234",
        "identifier": {
          "system": "http://example.org/gln",
          "value": "1234567890123"
        }
      }
    },
    {
      "type": {
        "coding": [
          {
            "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusParticipationRoleType",
            "code": "ehmiReceiver",
            "display": "Receiver"
          }
        ]
      },
      "who": {
        "reference": "Organization/5678",
        "identifier": {
          "system": "http://example.org/gln",
          "value": "9876543210987"
        }
      }
    }
  ],
  "source": {
    "type": {
      "coding": [
        {
          "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusSourceType",
          "code": "exampleSourceType"
        }
      ]
    },
    "observer": {
      "reference": "Device/exampleDevice"
    }
  },
  "entity": [
    {
      "type": {
        "coding": [
          {
            "system": "http://medcomehmi.dk/ig/dk-ehmi-eds/CodeSystem/EhmiDeliveryStatusEntityType",
            "code": "ehmiMessage"
          }
        ]
      },
      "what": {
        "identifier": {
          "system": "http://example.org/messageIdentifier",
          "value": "ABC123"
        }
      },
      "detail": [
        {
          "type": "ehmiMessageType",
          "valueString": "homecareobservation-message"
        },
        {
          "type": "ehmiMessageVersion",
          "valueString": "1.0"
        }
      ]
    }
  ]
}