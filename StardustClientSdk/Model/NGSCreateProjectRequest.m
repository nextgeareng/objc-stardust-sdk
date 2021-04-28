#import "NGSCreateProjectRequest.h"

@implementation NGSCreateProjectRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"projectGroupIdentifier": @"projectGroupIdentifier", @"projectName": @"projectName", @"resourcePaths": @"resourcePaths", @"lossAddress": @"lossAddress", @"officeAddress": @"officeAddress", @"estimatedCompletionDateUtc": @"estimatedCompletionDateUtc", @"startDateUtc": @"startDateUtc", @"companyName": @"companyName", @"emailAddress": @"emailAddress", @"webReviewUri": @"webReviewUri", @"websiteUri": @"websiteUri", @"lossAddressContact": @"lossAddressContact", @"initiator": @"initiator", @"technician": @"technician", @"externalParticipants": @"externalParticipants" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"projectGroupIdentifier", @"projectName", @"resourcePaths", @"lossAddress", @"officeAddress", @"estimatedCompletionDateUtc", @"startDateUtc", @"companyName", @"emailAddress", @"webReviewUri", @"websiteUri", @"lossAddressContact", @"initiator", @"technician", @"externalParticipants"];
  return [optionalProperties containsObject:propertyName];
}

@end
