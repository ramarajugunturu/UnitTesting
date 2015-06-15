//
//  BankAccount.h
//  UnitTesting
//
//  Created by Rama Gunturu on 5/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BankAccount : NSObject<NSCopying>
{
    double accountBalance;
    long accountNumber;
}
-(void) setAccount: (long) y andBalance: (double) x;
-(double) getAccountBalance;
-(long) getAccountNumber;
-(void) setAccountBalance: (double) x;
-(void) setAccountNumber: (long) y;
-(void) displayAccountInfo;
-(id) copyWithZone: (NSZone *) zone;
@end
