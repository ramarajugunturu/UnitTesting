//
//  ChoosyAppAction.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/20/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "ChoosyAppAction.h"

@implementation ChoosyAppAction

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    // model_property_name : json_field_name
    return @{
             @"actionKey" : @"key",
             @"urlFormat" : @"url_format"
             };
}

@end
