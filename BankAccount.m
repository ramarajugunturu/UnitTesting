//
//  BankAccount.m
//  UnitTesting
//
//  Created by Rama Gunturu on 5/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import "BankAccount.h"

@implementation BankAccount

-(instancetype) copyWithZone: (NSZone *) zone
{
    BankAccount *accountCopy = [[BankAccount allocWithZone: zone] init];
    
    //This method creates a new BankAccount object, copies the values of the instance variables (in this case accountBalance and accountNumber) and returns a pointer to the new object:
    [accountCopy setAccount: accountNumber andBalance: accountBalance];
    return accountCopy;
}

@end
