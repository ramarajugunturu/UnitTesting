//
//  ChoosyAppInfo.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/20/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "ChoosyAppInfo.h"
#import "ChoosyAppAction.h"

@implementation ChoosyAppInfo

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // model_property_name : json_field_name
    return @{
             @"appName" : @"name",
             @"appKey" : @"key",
             @"appURLScheme" : @"app_url_scheme",
             @"appActions" : @"actions",
             @"isInstalled" : NSNull.null // tell Mantle to ignore this property
             };
}

+ (NSValueTransformer *)appURLSchemeJSONTransformer {
    // use Mantle's built-in "value transformer" to convert strings to NSURL and vice-versa
    // you can write your own transformers
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)appActionsJSONTransformer
{
    // tell Mantle to populate appActions property with an array of ChoosyAppAction objects
    //return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[ChoosyAppAction class]];
    return [MTLJSONAdapter arrayTransformerWithModelClass:[ChoosyAppAction class]];
}

@end
