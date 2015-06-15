//
//  Person.h
//  UnitTesting
//
//  Created by Rama Gunturu on 4/15/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

- (NSString *)getFullName;
- (NSString *)getProperName;
- (NSString *)getProperNameAndDoSomething;
- (BOOL)isLastNameReallyLong;

@end

