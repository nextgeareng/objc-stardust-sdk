#import "NGSProject.h"

@implementation NGSProject

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"projectGroupIdentifier": @"projectGroupIdentifier", @"resourcePaths": @"resourcePaths", @"projectName": @"projectName", @"lossAddress": @"lossAddress", @"officeAddress": @"officeAddress", @"participants": @"participants", @"startDateUtc": @"startDateUtc", @"estimatedCompletionDateUtc": @"estimatedCompletionDateUtc", @"companyName": @"companyName", @"emailAddress": @"emailAddress", @"webReviewUri": @"webReviewUri", @"websiteUri": @"websiteUri", @"hashLookup": @"hashLookup" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"resourcePaths", @"projectName", @"lossAddress", @"officeAddress", @"participants", @"companyName", @"emailAddress", @"webReviewUri", @"websiteUri", @"hashLookup"];
  return [optionalProperties containsObject:propertyName];
}

@end
