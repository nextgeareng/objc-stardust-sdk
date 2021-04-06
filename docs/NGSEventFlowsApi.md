# NGSEventFlowsApi

All URIs are relative to *https://sandboxsd.dash-online.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentState**](NGSEventFlowsApi.md#getcurrentstate) | **GET** /api/stardust/v1/applications/{applicationName}/eventflows/resources/{resourceType}/{identifier}/currentstate | Returns the current state of an existing event flow for a given job.
[**invoke**](NGSEventFlowsApi.md#invoke) | **POST** /api/stardust/v1/applications/{applicationName}/eventflows/invoke | Initiates an event flow. This endpoint should be used when appending an event flow to an existing project


# **getCurrentState**
```objc
-(NSURLSessionTask*) getCurrentStateWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSCurrentStateResponse* output, NSError* error)) handler;
```

Returns the current state of an existing event flow for a given job.

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The Application Name of the calling application
NSString* resourceType = @"resourceType_example"; // The resource type, such as job, loss, etc.
NSString* identifier = @"identifier_example"; // The Identifier for the given resource.
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSEventFlowsApi*apiInstance = [[NGSEventFlowsApi alloc] init];

// Returns the current state of an existing event flow for a given job.
[apiInstance getCurrentStateWithApplicationName:applicationName
              resourceType:resourceType
              identifier:identifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSCurrentStateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSEventFlowsApi->getCurrentState: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The Application Name of the calling application | 
 **resourceType** | **NSString***| The resource type, such as job, loss, etc. | 
 **identifier** | **NSString***| The Identifier for the given resource. | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSCurrentStateResponse***](NGSCurrentStateResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoke**
```objc
-(NSURLSessionTask*) invokeWithApplicationName: (NSString*) applicationName
    request: (NGSEventStateRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSEventFlowResponse* output, NSError* error)) handler;
```

Initiates an event flow. This endpoint should be used when appending an event flow to an existing project

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The Application Name of the calling application
NGSEventStateRequest* request = [[NGSEventStateRequest alloc] init]; // Contains parameters to initiate the event flow, including owner, initiator, application job id, and recipient. The consumer can also specify a starting state for the event flow.
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSEventFlowsApi*apiInstance = [[NGSEventFlowsApi alloc] init];

// Initiates an event flow. This endpoint should be used when appending an event flow to an existing project
[apiInstance invokeWithApplicationName:applicationName
              request:request
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSEventFlowResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSEventFlowsApi->invoke: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The Application Name of the calling application | 
 **request** | [**NGSEventStateRequest***](NGSEventStateRequest.md)| Contains parameters to initiate the event flow, including owner, initiator, application job id, and recipient. The consumer can also specify a starting state for the event flow. | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSEventFlowResponse***](NGSEventFlowResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

