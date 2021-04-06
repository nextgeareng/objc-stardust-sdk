#import "NGSAddress.h"

@implementation NGSAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address1": @"address1", @"address2": @"address2", @"city": @"city", @"stateProvince": @"stateProvince", @"postalCode": @"postalCode", @"country": @"country", @"addressType": @"addressType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address1", @"address2", @"city", @"stateProvince", @"postalCode", @"country", @"addressType"];
  return [optionalProperties containsObject:propertyName];
}

@end
