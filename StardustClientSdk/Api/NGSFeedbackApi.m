#import "NGSFeedbackApi.h"
#import "NGSQueryParamCollection.h"
#import "NGSApiClient.h"
#import "NGSCreateProjectFeedbackRequest.h"
#import "NGSProblemDetails.h"
#import "NGSProjectFeedbackResponse.h"


@interface NGSFeedbackApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NGSFeedbackApi

NSString* kNGSFeedbackApiErrorDomain = @"NGSFeedbackApiErrorDomain";
NSInteger kNGSFeedbackApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[NGSApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(NGSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Creates a job feedback based on event flow and portal.
/// 
///  @param applicationName  
///
///  @param jobFeedbackRequest  
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @returns void
///
-(NSURLSessionTask*) addJobFeedbackWithApplicationName: (NSString*) applicationName
    jobFeedbackRequest: (NGSCreateProjectFeedbackRequest*) jobFeedbackRequest
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'applicationName' is set
    if (applicationName == nil) {
        NSParameterAssert(applicationName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"applicationName"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'jobFeedbackRequest' is set
    if (jobFeedbackRequest == nil) {
        NSParameterAssert(jobFeedbackRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobFeedbackRequest"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/applications/{applicationName}/feedback"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (applicationName != nil) {
        pathParams[@"applicationName"] = applicationName;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xClientIdentifier != nil) {
        headerParams[@"X-Client-Identifier"] = xClientIdentifier;
    }
    if (xAPIKey != nil) {
        headerParams[@"X-API-Key"] = xAPIKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/_*+json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = jobFeedbackRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Gets feedback for a job.
/// 
///  @param applicationName The calling application name 
///
///  @param resourceType The resource type, such as job, loss, etc. 
///
///  @param identifier The identifier of the resource 
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @returns NSArray<NGSProjectFeedbackResponse>*
///
-(NSURLSessionTask*) getJobFeedbackByResourceWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSArray<NGSProjectFeedbackResponse>* output, NSError* error)) handler {
    // verify the required parameter 'applicationName' is set
    if (applicationName == nil) {
        NSParameterAssert(applicationName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"applicationName"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'resourceType' is set
    if (resourceType == nil) {
        NSParameterAssert(resourceType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"resourceType"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'identifier' is set
    if (identifier == nil) {
        NSParameterAssert(identifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"identifier"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSFeedbackApiErrorDomain code:kNGSFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/applications/{applicationName}/feedback/resources/{resourceType}/{identifier}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (applicationName != nil) {
        pathParams[@"applicationName"] = applicationName;
    }
    if (resourceType != nil) {
        pathParams[@"resourceType"] = resourceType;
    }
    if (identifier != nil) {
        pathParams[@"identifier"] = identifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xClientIdentifier != nil) {
        headerParams[@"X-Client-Identifier"] = xClientIdentifier;
    }
    if (xAPIKey != nil) {
        headerParams[@"X-API-Key"] = xAPIKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<NGSProjectFeedbackResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NGSProjectFeedbackResponse>*)data, error);
                                }
                            }];
}



@end
