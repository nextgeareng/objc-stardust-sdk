# NGSClientsApi

All URIs are relative to *https://sandboxsd.dash-online.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addApiKey**](NGSClientsApi.md#addapikey) | **GET** /api/stardust/v1/clients/{clientIdentifier}/apikey | Creates a Client API Key Status -- Completed
[**create**](NGSClientsApi.md#create) | **POST** /api/stardust/v1/clients/create | Creates a new client based on client name and a list of Application Names. A client can have one or more Application Names. Example: ABC Restoration is associated with DASH Application &#39;dash-uat&#39; and MICA Application &#39;mica-uat&#39; Status -- Completed
[**getClientByIdentifier**](NGSClientsApi.md#getclientbyidentifier) | **GET** /api/stardust/v1/clients/{clientIdentifier} | Gets a client based on client identifier Status -- Completed
[**getClientsBySystemId**](NGSClientsApi.md#getclientsbysystemid) | **GET** /api/stardust/v1/clients/applications/{applicationName} | Returns a list of clients based on Application Name Status -- Completed
[**update**](NGSClientsApi.md#update) | **POST** /api/stardust/v1/clients/{clientIdentifier}/update | Allows a client to be updated based on ClientIdentifier and a list of Application Names For example, if you wanted to associate an existing client with another application, you would use this endpoint. You would also use this endpoint to remove an application association with a client. Example: ABC Restoration is associated with DASH Application dash-svm and needs also to associated with MICA Application mica-uat. Status -- Completed


# **addApiKey**
```objc
-(NSURLSessionTask*) addApiKeyWithClientIdentifier: (NSString*) clientIdentifier
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Creates a Client API Key Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clientIdentifier = @"clientIdentifier_example"; // The ClientIdentifier of the client to be updated.

NGSClientsApi*apiInstance = [[NGSClientsApi alloc] init];

// Creates a Client API Key Status -- Completed
[apiInstance addApiKeyWithClientIdentifier:clientIdentifier
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSClientsApi->addApiKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientIdentifier** | **NSString***| The ClientIdentifier of the client to be updated. | 

### Return type

**NSString***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create**
```objc
-(NSURLSessionTask*) createWithRequest: (NGSCreateClientRequest*) request
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Creates a new client based on client name and a list of Application Names. A client can have one or more Application Names. Example: ABC Restoration is associated with DASH Application 'dash-uat' and MICA Application 'mica-uat' Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NGSCreateClientRequest* request = [[NGSCreateClientRequest alloc] init]; // Contains values for creating a client, such as Client Name, and a List of Application Names the client is associated with.

NGSClientsApi*apiInstance = [[NGSClientsApi alloc] init];

// Creates a new client based on client name and a list of Application Names. A client can have one or more Application Names. Example: ABC Restoration is associated with DASH Application 'dash-uat' and MICA Application 'mica-uat' Status -- Completed
[apiInstance createWithRequest:request
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSClientsApi->create: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**NGSCreateClientRequest***](NGSCreateClientRequest.md)| Contains values for creating a client, such as Client Name, and a List of Application Names the client is associated with. | 

### Return type

**NSString***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientByIdentifier**
```objc
-(NSURLSessionTask*) getClientByIdentifierWithClientIdentifier: (NSString*) clientIdentifier
        completionHandler: (void (^)(NGSClient* output, NSError* error)) handler;
```

Gets a client based on client identifier Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clientIdentifier = @"clientIdentifier_example"; // The Client Identifier of the desired client

NGSClientsApi*apiInstance = [[NGSClientsApi alloc] init];

// Gets a client based on client identifier Status -- Completed
[apiInstance getClientByIdentifierWithClientIdentifier:clientIdentifier
          completionHandler: ^(NGSClient* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSClientsApi->getClientByIdentifier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientIdentifier** | **NSString***| The Client Identifier of the desired client | 

### Return type

[**NGSClient***](NGSClient.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientsBySystemId**
```objc
-(NSURLSessionTask*) getClientsBySystemIdWithApplicationName: (NSString*) applicationName
        completionHandler: (void (^)(NSArray<NGSClient>* output, NSError* error)) handler;
```

Returns a list of clients based on Application Name Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The Application Name used to query clients

NGSClientsApi*apiInstance = [[NGSClientsApi alloc] init];

// Returns a list of clients based on Application Name Status -- Completed
[apiInstance getClientsBySystemIdWithApplicationName:applicationName
          completionHandler: ^(NSArray<NGSClient>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSClientsApi->getClientsBySystemId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The Application Name used to query clients | 

### Return type

[**NSArray<NGSClient>***](NGSClient.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
```objc
-(NSURLSessionTask*) updateWithClientIdentifier: (NSString*) clientIdentifier
    request: (NGSUpdateClientRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Allows a client to be updated based on ClientIdentifier and a list of Application Names For example, if you wanted to associate an existing client with another application, you would use this endpoint. You would also use this endpoint to remove an application association with a client. Example: ABC Restoration is associated with DASH Application dash-svm and needs also to associated with MICA Application mica-uat. Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* clientIdentifier = @"clientIdentifier_example"; // The ClientIdentifier of the client to be updated.
NGSUpdateClientRequest* request = [[NGSUpdateClientRequest alloc] init]; // Contains values for updating a client, such as Client Name, and a list of Source System Ids the client is associated with.

NGSClientsApi*apiInstance = [[NGSClientsApi alloc] init];

// Allows a client to be updated based on ClientIdentifier and a list of Application Names For example, if you wanted to associate an existing client with another application, you would use this endpoint. You would also use this endpoint to remove an application association with a client. Example: ABC Restoration is associated with DASH Application dash-svm and needs also to associated with MICA Application mica-uat. Status -- Completed
[apiInstance updateWithClientIdentifier:clientIdentifier
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling NGSClientsApi->update: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientIdentifier** | **NSString***| The ClientIdentifier of the client to be updated. | 
 **request** | [**NGSUpdateClientRequest***](NGSUpdateClientRequest.md)| Contains values for updating a client, such as Client Name, and a list of Source System Ids the client is associated with. | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

