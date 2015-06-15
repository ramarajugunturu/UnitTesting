//
//  PlayingCard.h
//  UnitTestCheck
//
//  Created by Rama Gunturu on 2/27/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
