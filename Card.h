//
//  Card.h
//  UnitTestCheck
//
//  Created by Rama Gunturu on 2/27/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
