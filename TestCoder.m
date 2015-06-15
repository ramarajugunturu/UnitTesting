//
//  TestCoder.m
//  UnitTesting
//
//  Created by Rama Gunturu on 5/6/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "TestCoder.h"

@implementation TestCoder

- (id)initWithCoder:(NSCoder *)coder
{
    if ((self = [super init]))
    {
        // Decode the property values by key, and assign them to the correct ivars
        _property1 = [coder decodeIntegerForKey:@"property1"];
        _property2 = [coder decodeBoolForKey:@"property2"];
        _property3 = [coder decodeObjectForKey:@"property3"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    // Encode our ivars using string keys
    [coder encodeInteger:_property1 forKey:@"property1"];
    [coder encodeBool:_property2 forKey:@"property2"];
    [coder encodeObject:_property3 forKey:@"property3"];
}

@end
