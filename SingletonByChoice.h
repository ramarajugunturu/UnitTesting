//
//  SingletonByChoice.h
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//



//Note:-

//  This class provides basic Singleton By Choice functionality.
//  It is intended for use as a parent class for singletons.

#import <Foundation/Foundation.h>

@interface SingletonByChoice : NSObject

+ (SingletonByChoice *)sharedInstance;

@end
