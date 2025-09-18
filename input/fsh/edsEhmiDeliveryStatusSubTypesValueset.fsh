// Likely needs to move to the terminology package and get a differnt more specific name as this is a subset of EdsSubtypesValueset
ValueSet: EhmiDeliveryStatusSubTypesValueset
Id: ehmi-delivery-status-sub-types-valueset
Title: "EHMI Delivery Status (EDS) - SubTypes Valueset"
Description: "ValueSet containing codes for EHMI Delivery Status (EDS) SubTypes"
* insert Metadata
//* include codes from valueset $EdsSubtypes
* include codes from system $EdsSubtypesCS 
* $EdsSubtypesCS#msg-created-and-sent "Message created and sent"
* $EdsSubtypesCS#msg-sent "Message sent"
* $EdsSubtypesCS#msg-received "Message received"
* $EdsSubtypesCS#msg-received-and-finalized "Message received and finalized"

