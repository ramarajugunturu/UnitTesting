//
//  ChoosyAppAction.h
//  UnitTesting
//
//  Created by Rama Gunturu on 4/20/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>
@interface ChoosyAppAction : MTLModel<MTLJSONSerializing>

@property (nonatomic) NSString *actionKey;
@property (nonatomic) NSString *urlFormat;

@end
