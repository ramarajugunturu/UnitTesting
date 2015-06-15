//
//  Book.m
//  UnitTesting
//
//  Created by Rama Gunturu on 5/7/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "Book.h"

@implementation Book

#pragma mark - NSCoding
- (id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.title = [decoder decodeObjectForKey:@"title"];
    self.author = [decoder decodeObjectForKey:@"author"];
    self.pageCount = [decoder decodeIntegerForKey:@"pageCount"];
    self.categories = [decoder decodeObjectForKey:@"categories"];
    self.available = [decoder decodeBoolForKey:@"available"];
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:self.title forKey:@"title"];
    [encoder encodeObject:self.author forKey:@"author"];
    [encoder encodeInteger:self.pageCount forKey:@"pageCount"];
    [encoder encodeObject:self.categories forKey:@"categories"];
    [encoder encodeBool:[self isAvailable] forKey:@"available"];
}


@end
