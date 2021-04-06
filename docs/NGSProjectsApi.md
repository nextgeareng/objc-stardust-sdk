# NGSProjectsApi

All URIs are relative to *https://sandboxsd.dash-online.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProject**](NGSProjectsApi.md#createproject) | **POST** /api/stardust/v1/applications/{applicationName}/projects | Creates a new project. If no Project Group Identifier is specified, a new Project Group will be created automatically. Status -- Completed
[**createProjectGroup**](NGSProjectsApi.md#createprojectgroup) | **POST** /api/stardust/v1/applications/{applicationName}/projects/groups | Creates a new project group Status -- Completed
[**getProjectByIdentifier**](NGSProjectsApi.md#getprojectbyidentifier) | **GET** /api/stardust/v1/applications/{applicationName}/projects/{projectIdentifier} | Gets Project by Project Identifier Status -- Completed
[**getProjectGroupByIdentifier**](NGSProjectsApi.md#getprojectgroupbyidentifier) | **GET** /api/stardust/v1/applications/{applicationName}/projects/groups/{projectGroupIdentifier} | Gets Project Group by Project Group Identifier Status -- Completed
[**getProjectsByJob**](NGSProjectsApi.md#getprojectsbyjob) | **GET** /api/stardust/v1/applications/{applicationName}/projects/jobs/{jobIdentifier} | Gets Project by Job Identifier and System Status -- Completed
[**updateProject**](NGSProjectsApi.md#updateproject) | **POST** /api/stardust/v1/applications/{applicationName}/projects/update | Edits an existing project. Status -- Completed


# **createProject**
```objc
-(NSURLSessionTask*) createProjectWithRequest: (NGSCreateProjectRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Creates a new project. If no Project Group Identifier is specified, a new Project Group will be created automatically. Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NGSCreateProjectRequest* request = [[NGSCreateProjectRequest alloc] init]; // Contains values to set a name for the project.
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Creates a new project. If no Project Group Identifier is specified, a new Project Group will be created automatically. Status -- Completed
[apiInstance createProjectWithRequest:request
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->createProject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**NGSCreateProjectRequest***](NGSCreateProjectRequest.md)| Contains values to set a name for the project. | 
 **applicationName** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

**NSString***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProjectGroup**
```objc
-(NSURLSessionTask*) createProjectGroupWithRequest: (NGSCreateProjectGroupRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Creates a new project group Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NGSCreateProjectGroupRequest* request = [[NGSCreateProjectGroupRequest alloc] init]; // Contains parameters related to creating a new project group.
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Creates a new project group Status -- Completed
[apiInstance createProjectGroupWithRequest:request
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->createProjectGroup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**NGSCreateProjectGroupRequest***](NGSCreateProjectGroupRequest.md)| Contains parameters related to creating a new project group. | 
 **applicationName** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

**NSString***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectByIdentifier**
```objc
-(NSURLSessionTask*) getProjectByIdentifierWithProjectIdentifier: (NSString*) projectIdentifier
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSProject* output, NSError* error)) handler;
```

Gets Project by Project Identifier Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* projectIdentifier = @"projectIdentifier_example"; // The Project Identifier of the desired project
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Gets Project by Project Identifier Status -- Completed
[apiInstance getProjectByIdentifierWithProjectIdentifier:projectIdentifier
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSProject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->getProjectByIdentifier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectIdentifier** | **NSString***| The Project Identifier of the desired project | 
 **applicationName** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSProject***](NGSProject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectGroupByIdentifier**
```objc
-(NSURLSessionTask*) getProjectGroupByIdentifierWithProjectGroupIdentifier: (NSString*) projectGroupIdentifier
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSProjectGroup* output, NSError* error)) handler;
```

Gets Project Group by Project Group Identifier Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* projectGroupIdentifier = @"projectGroupIdentifier_example"; // The Project Group Identifier of the desired group
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Gets Project Group by Project Group Identifier Status -- Completed
[apiInstance getProjectGroupByIdentifierWithProjectGroupIdentifier:projectGroupIdentifier
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSProjectGroup* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->getProjectGroupByIdentifier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectGroupIdentifier** | **NSString***| The Project Group Identifier of the desired group | 
 **applicationName** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSProjectGroup***](NGSProjectGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectsByJob**
```objc
-(NSURLSessionTask*) getProjectsByJobWithApplicationName: (NSString*) applicationName
    jobIdentifier: (NSString*) jobIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSArray<NGSProject>* output, NSError* error)) handler;
```

Gets Project by Job Identifier and System Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The System name and System Id of the calling application. For example: dash-svm, proassist, MICA-UAT
NSString* jobIdentifier = @"jobIdentifier_example"; // The Identifier of the job.
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Gets Project by Job Identifier and System Status -- Completed
[apiInstance getProjectsByJobWithApplicationName:applicationName
              jobIdentifier:jobIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSArray<NGSProject>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->getProjectsByJob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The System name and System Id of the calling application. For example: dash-svm, proassist, MICA-UAT | 
 **jobIdentifier** | **NSString***| The Identifier of the job. | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NSArray<NGSProject>***](NGSProject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
```objc
-(NSURLSessionTask*) updateProjectWithRequest: (NGSEditProjectRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSError* error)) handler;
```

Edits an existing project. Status -- Completed

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NGSEditProjectRequest* request = [[NGSEditProjectRequest alloc] init]; // Contains values to update an existing project.
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSProjectsApi*apiInstance = [[NGSProjectsApi alloc] init];

// Edits an existing project. Status -- Completed
[apiInstance updateProjectWithRequest:request
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling NGSProjectsApi->updateProject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**NGSEditProjectRequest***](NGSEditProjectRequest.md)| Contains values to update an existing project. | 
 **applicationName** | **NSString***|  | 
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

