## Post EdsPatientDeliveryStatus

An EDS Client wants to make an EDS Delivery Status registration.  

This use case is conforming to this OperationDefinition: 

    **Be aware:** The exact name of this operation may differentiate, when it comes to the real world implementation, 
    but the intention is to implement a service that given the input parameters profile will produce the output parameters Profile.

    Generated Narrative: OperationDefinition eer.postEdsPatientDeliveryStatus

    URL: [base]/postEdsPatientDeliveryStatus

    Input parameters Profile:

    http://medcomehmi.dk/ig/eds/EdsPatientDeliveryStatus

    Output parameters Profile: HTTP 200 OK
    
### Error use cases for use case 2

There may be many error use cases, here some of them are mentioned. Expect them to grow over time

- error use case 2a - the reported EdsPatientDeliveryStatus does not conform with the profile
- error use case 2b - the RDS Client doesn't have the rights to post an EdsPatientDeliveryStatus at all
- error use case 2c - the RDS Client doesn't have the rights to post an EdsPatientDeliveryStatus on behalf of the Organization which has either the role of a Sender or a Receiver

### Error use cases 2a-2c

The output parameter will be an operationOutcome with a failure notice on what went wrong.

<!--img src="./eer_getDeviceDataByDeviceId_error1.png" alt="eer_getDeviceDataByDeviceId_error1" style="width:100%;height:auto;border=1;margin: 20px 20px 20px 0px"-->

 