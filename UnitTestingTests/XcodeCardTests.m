//
//  XcodeCardTests.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Card.h"
//#import "Person.h"

@interface XcodeCardTests : XCTestCase

@end

//////////////////////////////////////////////////////////////////
//////////////////   Adding a Private Category   /////////////////
//////////////////////////////////////////////////////////////////
//
//@interface Person (Test)
//
//- (NSString *)getFullName;
//
//@end

//////////////////////////////////////////////////////////////////

@implementation XcodeCardTests

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

////////////////////////////////////////////////////////////////
//---- XCode has a built-in in support for unit testing ----///
//////////////////////////////////////////////////////////////
- (void)testMatchesDifferentCardWithSameContents
{
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"one";
    NSArray *handOfCards = @[card2];
    int matchCount = [card1 match:handOfCards];
    XCTAssertEqual(matchCount, 1, @"Should have matched");
}
- (void)testDoesNotMatchDifferentCard
{
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"two";
    NSArray *handOfCards = @[card2];
    int matchCount = [card1 match:handOfCards];
    XCTAssertEqual(matchCount, 0, @"No matches, right?");
}
- (void)testMatchesForAtLeastOneCard
{
    NSLog(@"%s doing work...", __PRETTY_FUNCTION__);
    Card *card1 = [[Card alloc] init];
    card1.contents = @"one";
    Card *card2 = [[Card alloc] init];
    card2.contents = @"two";
    Card *card3 = [[Card alloc] init];
    card3.contents = @"one";
    NSArray *arrayOfCards = @[card2, card3];
    int matchCount = [card1 match:arrayOfCards];
    XCTAssertEqual(matchCount, 1, @"Should have matched at least 1");
}

////////////////////////////////////////////////////////////

//- (void)testGetFullName
//{
//    //Create a Person to Test
//    Person *aPersonToTest = [[Person alloc] init];
//    
//    //Create two strings for the Person's first and last name
//    NSString *firstName = @"George";
//    NSString *lastName = @"Bush";
//    
//    //Assign the names to the Person
//    aPersonToTest.firstName = firstName;
//    aPersonToTest.lastName = lastName;
//    
//    //Create a NSString that is the expected format of the full name
//    NSString *expectedFullName = [NSString stringWithFormat:@"%@ %@",
//                                  firstName,
//                                  lastName];
//    
//    //Assert that getFullName returns the full name in the format we expect
//    XCTAssertEqualObjects([aPersonToTest getFullName], expectedFullName,
//                          @"Full name should be the first name followed by the last name");
//}

@end
