//
//  Deck.h
//  UnitTestCheck
//
//  Created by Rama Gunturu on 2/27/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
