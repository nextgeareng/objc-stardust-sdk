#import "NGSEventStateRequest.h"

@implementation NGSEventStateRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"varNewState": @"newState", @"initiator": @"initiator", @"owner": @"owner", @"recipient": @"recipient", @"notes": @"notes", @"lossAddress": @"lossAddress", @"officeAddress": @"officeAddress", @"estimatedCompletionDateUtc": @"estimatedCompletionDateUtc", @"startDateUtc": @"startDateUtc", @"companyName": @"companyName", @"emailAddress": @"emailAddress", @"webReviewUri": @"webReviewUri", @"websiteUri": @"websiteUri", @"resourcePaths": @"resourcePaths", @"externalParticipants": @"externalParticipants" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"owner", @"notes", @"officeAddress", @"estimatedCompletionDateUtc", @"startDateUtc", @"companyName", @"emailAddress", @"webReviewUri", @"websiteUri", @"externalParticipants"];
  return [optionalProperties containsObject:propertyName];
}

@end
