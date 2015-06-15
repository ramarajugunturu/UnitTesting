//
//  Card.m
//  UnitTestCheck
//
//  Created by Rama Gunturu on 2/27/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    return score;
}


@end
