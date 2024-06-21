/*
// Define the TestScript resource
Instance: EdsBasicDeliveryStatusTestScript
InstanceOf: TestScript
Title: "EdsBasicDeliveryStatus Test Script"
Description: "TestScript for testing EdsBasicDeliveryStatus profile"
* url = "http://example.org/fhir/TestScript/EdsBasicDeliveryStatusTestScript"
* name = "EdsBasicDeliveryStatusTestScript"
* status = #draft
* description = "TestScript for testing EdsBasicDeliveryStatus profile"

// Fixture for EdsBasicDeliveryStatus Example
Instance: EdsBasicDeliveryStatusExample
InstanceOf: Basic
Title: "EdsBasicDeliveryStatus Example"
* id = "example"
* meta.profile[0] = "http://medcomdk.dk/dk-ehmi-eds/StructureDefinition/EdsBasicDeliveryStatus"
* code = http://terminology.hl7.org/CodeSystem/basic-resource-type#delivstatus
* created = "2024-06-18"
* author.reference = "Practitioner/example"

// Test Section - CreateEdsBasicDeliveryStatus
Instance: CreateEdsBasicDeliveryStatus
InstanceOf: TestScript
* name = "CreateEdsBasicDeliveryStatus"
* description = "Test creating an EdsBasicDeliveryStatus resource"
* action[0].operation.type.code = "create"
* action[0].operation.resource = "Basic"
* action[0].operation.sourceId = "EdsBasicDeliveryStatusExample"
* action[1].assert.description = "Ensure the response has a 201 status code"
* action[1].assert.response = #created

// Test Section - ReadEdsBasicDeliveryStatus
Instance: ReadEdsBasicDeliveryStatus
InstanceOf: TestScript
* name = "ReadEdsBasicDeliveryStatus"
* description = "Test reading an EdsBasicDeliveryStatus resource"
* action[0].operation.type.code = "read"
* action[0].operation.resource = "Basic"
* action[0].operation.params = "EdsBasicDeliveryStatusExample"
* action[1].assert.description = "Ensure the response has a 200 status code"
* action[1].assert.response = #okay

// Test Section - ValidateEdsBasicDeliveryStatus
Instance: ValidateEdsBasicDeliveryStatus
InstanceOf: TestScript
* name = "ValidateEdsBasicDeliveryStatus"
* description = "Test validating an EdsBasicDeliveryStatus resource"
* action[0].operation.type.code = "validate"
* action[0].operation.resource = "Basic"
* action[0].operation.params = "EdsBasicDeliveryStatusExample"
* action[1].assert.description = "Ensure the EdsBasicDeliveryStatus resource is valid"
* action[1].assert.resource = "Basic"
* action[1].assert.operator = #validate

// Linking tests to the TestScript
* test[0].name = "CreateEdsBasicDeliveryStatus"
* test[1].name = "ReadEdsBasicDeliveryStatus"
* test[2].name = "ValidateEdsBasicDeliveryStatus"
*/