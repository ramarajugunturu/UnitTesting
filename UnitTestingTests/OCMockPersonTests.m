//
//  OCMockPersonTests.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/15/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#include "Person.h"

@interface OCMockPersonTests : XCTestCase


@end

//////////////////////////////////////////////////////////////////
//////////////////   Adding a Private Category   /////////////////
//////////////////////////////////////////////////////////////////
//
@interface Person (Test)

@property (nonatomic, strong) NSString *suffix;

- (NSString *)getFullName;
- (NSString *)getProperName;
- (void)doSomethingElseWithTheName;

@end

@implementation OCMockPersonTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

- (void)testGetProperName
{
    //Create a Person to Test
    Person *aPersonToTest = [[Person alloc] init];
    
    //Create the partial mock from the instantiated Person
    id mockPersonToTest = [OCMockObject partialMockForObject:aPersonToTest];
    [[[mockPersonToTest stub] andReturn:@"RamaRaju Gunturi"] getFullName];
    
    aPersonToTest.suffix = @"Mr.";
    
    //Call getProperName on the mock object.
    XCTAssertEqualObjects([mockPersonToTest getProperName],
                          @"RamaRaju Gunturi, Mr.",
                          @"Proper name should be the first name followed by the last name, and then the suffix");
}


- (void)testGetProperNameWithExpectations
{
    //Create a Person to Test
    Person *aPersonToTest = [[Person alloc] init];
    
    //Create the partial mock from the instantiated Person
    id mockPersonToTest = [OCMockObject partialMockForObject:aPersonToTest];
    [[[mockPersonToTest stub] andReturn:@"George Bush"] getFullName];
    
    [[mockPersonToTest expect] doSomethingElseWithTheName];
    
    aPersonToTest.suffix = @"Sr.";
    
    //Call getProperName on the mock object.
    XCTAssertEqualObjects([mockPersonToTest getProperName],
                          @"George Bush, Sr.",
                          @"Proper name should be the first name followed by the last name, and then the suffix");

    //Without the call to verify here, the test will pass
    //[mockPersonToTest verify];
}

- (void)testGetProperNameWithExpectationsAndVerify
{
    //Create a Person to Test
    Person *aPersonToTest = [[Person alloc] init];
    
    //Create the partial mock from the instantiated Person
    id mockPersonToTest = [OCMockObject partialMockForObject:aPersonToTest];
    [[[mockPersonToTest stub] andReturn:@"George Bus"] getFullName];
    
    [[mockPersonToTest expect] doSomethingElseWithTheName];
    
    aPersonToTest.suffix = @"Sr.";
    
    //Call getProperName on the mock object.
    XCTAssertEqualObjects([mockPersonToTest getProperName],
                          @"George Bush, Sr.",
                          @"Proper name should be the first name followed by the last name, and then the suffix");
    
    //Without the call to verify here, the test will pass
    [mockPersonToTest verify];
}



@end
