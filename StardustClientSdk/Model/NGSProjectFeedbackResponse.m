#import "NGSProjectFeedbackResponse.h"

@implementation NGSProjectFeedbackResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"projectFeedbackIdentifier": @"projectFeedbackIdentifier", @"eventFlowIdentifier": @"eventFlowIdentifier", @"rating": @"rating", @"feedbackText": @"feedbackText", @"portalIdentifier": @"portalIdentifier", @"subject": @"subject", @"rater": @"rater", @"dateCreatedUtc": @"dateCreatedUtc", @"dateUpdatedUtc": @"dateUpdatedUtc", @"dateAppointmentStartUtc": @"dateAppointmentStartUtc", @"dateAppointmentCompleteUtc": @"dateAppointmentCompleteUtc" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"feedbackText", @"subject", @"rater", @"dateAppointmentCompleteUtc"];
  return [optionalProperties containsObject:propertyName];
}

@end
