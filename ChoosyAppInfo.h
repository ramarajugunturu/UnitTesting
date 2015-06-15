//
//  ChoosyAppInfo.h
//  UnitTesting
//
//  Created by Rama Gunturu on 4/20/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>

@interface ChoosyAppInfo : MTLModel<MTLJSONSerializing>

@property (nonatomic) NSString *appName;
@property (nonatomic) NSString *appKey;
@property (nonatomic) NSURL *appURLScheme;
@property (nonatomic) NSArray *appActions; // of ChoosyAppAction

@property (nonatomic) BOOL isInstalled;

@end
