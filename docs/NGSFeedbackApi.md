# NGSFeedbackApi

All URIs are relative to *https://sandboxsd.dash-online.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addJobFeedback**](NGSFeedbackApi.md#addjobfeedback) | **POST** /api/stardust/v1/applications/{applicationName}/feedback | Creates a job feedback based on event flow and portal.
[**getJobFeedbackByResource**](NGSFeedbackApi.md#getjobfeedbackbyresource) | **GET** /api/stardust/v1/applications/{applicationName}/feedback/resources/{resourceType}/{identifier} | Gets feedback for a job.


# **addJobFeedback**
```objc
-(NSURLSessionTask*) addJobFeedbackWithApplicationName: (NSString*) applicationName
    jobFeedbackRequest: (NGSCreateProjectFeedbackRequest*) jobFeedbackRequest
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSError* error)) handler;
```

Creates a job feedback based on event flow and portal.

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // 
NGSCreateProjectFeedbackRequest* jobFeedbackRequest = [[NGSCreateProjectFeedbackRequest alloc] init]; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSFeedbackApi*apiInstance = [[NGSFeedbackApi alloc] init];

// Creates a job feedback based on event flow and portal.
[apiInstance addJobFeedbackWithApplicationName:applicationName
              jobFeedbackRequest:jobFeedbackRequest
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling NGSFeedbackApi->addJobFeedback: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***|  | 
 **jobFeedbackRequest** | [**NGSCreateProjectFeedbackRequest***](NGSCreateProjectFeedbackRequest.md)|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobFeedbackByResource**
```objc
-(NSURLSessionTask*) getJobFeedbackByResourceWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSArray<NGSProjectFeedbackResponse>* output, NSError* error)) handler;
```

Gets feedback for a job.

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The calling application name
NSString* resourceType = @"resourceType_example"; // The resource type, such as job, loss, etc.
NSString* identifier = @"identifier_example"; // The identifier of the resource
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSFeedbackApi*apiInstance = [[NGSFeedbackApi alloc] init];

// Gets feedback for a job.
[apiInstance getJobFeedbackByResourceWithApplicationName:applicationName
              resourceType:resourceType
              identifier:identifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSArray<NGSProjectFeedbackResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSFeedbackApi->getJobFeedbackByResource: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The calling application name | 
 **resourceType** | **NSString***| The resource type, such as job, loss, etc. | 
 **identifier** | **NSString***| The identifier of the resource | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NSArray<NGSProjectFeedbackResponse>***](NGSProjectFeedbackResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

