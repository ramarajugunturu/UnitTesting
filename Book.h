//
//  Book.h
//  UnitTesting
//
//  Created by Rama Gunturu on 5/7/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject<NSCoding>

@property NSString *title;
@property NSString *author;
@property NSUInteger pageCount;
@property NSSet *categories;
@property (getter = isAvailable) BOOL available;

@end
