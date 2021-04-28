#import "NGSEditProjectRequest.h"

@implementation NGSEditProjectRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"identifier": @"identifier", @"projectName": @"projectName", @"resourcePaths": @"resourcePaths", @"lossAddress": @"lossAddress", @"officeAddress": @"officeAddress", @"lossAddressContact": @"lossAddressContact", @"initiator": @"initiator", @"technician": @"technician", @"externalParticipants": @"externalParticipants" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"projectName", @"resourcePaths", @"lossAddress", @"officeAddress", @"lossAddressContact", @"initiator", @"technician", @"externalParticipants"];
  return [optionalProperties containsObject:propertyName];
}

@end
