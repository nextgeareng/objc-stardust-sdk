#import "NGSEventFlowResponse.h"

@implementation NGSEventFlowResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"eventFlowIdentifier": @"eventFlowIdentifier", @"currentState": @"currentState", @"owner": @"owner", @"initiator": @"initiator", @"recipient": @"recipient", @"dateInitiatedUtc": @"dateInitiatedUtc", @"projectIdentifier": @"projectIdentifier", @"dateCompletedUtc": @"dateCompletedUtc", @"states": @"states", @"status": @"status", @"portalIdentifier": @"portalIdentifier" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"currentState", @"owner", @"initiator", @"recipient", @"dateCompletedUtc", @"states", @"status", @"portalIdentifier"];
  return [optionalProperties containsObject:propertyName];
}

@end
