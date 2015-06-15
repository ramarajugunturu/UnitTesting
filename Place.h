//
//  Place.h
//  UnitTestCheck
//
//  Created by Rama Gunturu on 4/13/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject

@property NSString *name;
-(NSString *)getPlaceName;
-(NSString *)getEncodedName;
-(NSString *)encodeName;

@end
