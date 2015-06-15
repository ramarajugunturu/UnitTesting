//
//  TestCoder.h
//  UnitTesting
//
//  Created by Rama Gunturu on 5/6/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

////////////////////////////////////////////////////////////////
//----- Object Serialization using NSCoder and NSCoding -----//
//////////////////////////////////////////////////////////////
/*
 Note:
 Cocoa provides an abstract class called NSCoder, along with a protocol called NSCoding.
*/
#import <Foundation/Foundation.h>

@interface TestCoder : NSObject<NSCoding>

@property (nonatomic, assign) NSInteger property1;
@property (nonatomic, assign) BOOL property2;
@property (nonatomic, copy) NSString *property3;

@end
