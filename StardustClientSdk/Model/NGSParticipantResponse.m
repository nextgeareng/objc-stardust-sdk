#import "NGSParticipantResponse.h"

@implementation NGSParticipantResponse

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"identifier": @"identifier", @"firstName": @"firstName", @"lastName": @"lastName", @"mobilePhoneNumber": @"mobilePhoneNumber", @"emailAddress": @"emailAddress", @"companyName": @"companyName", @"imageUri": @"imageUri", @"communicationPreference": @"communicationPreference", @"participantType": @"participantType", @"tags": @"tags", @"resourcePaths": @"resourcePaths" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"firstName", @"lastName", @"mobilePhoneNumber", @"emailAddress", @"companyName", @"imageUri", @"communicationPreference", @"participantType", @"tags", @"resourcePaths"];
  return [optionalProperties containsObject:propertyName];
}

@end
