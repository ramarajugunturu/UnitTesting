//
//  Place.m
//  UnitTestCheck
//
//  Created by Rama Gunturu on 4/13/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "Place.h"

@implementation Place

@synthesize name;
-(NSString *)getPlaceName
{
    return self.name;
}

-(NSString *)encodeName
{
    return [[self getPlaceName] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

-(NSString *)getEncodedName
{
    return [self encodeName];
}

-(void)getPlaceDetails:(void (^)())successBlock
{
    //Make a network call to get the place's details from Google Places API for instance
}

@end
