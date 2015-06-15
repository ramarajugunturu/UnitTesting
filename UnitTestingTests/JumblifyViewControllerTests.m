//
//  JumblifyViewControllerTests.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface JumblifyViewControllerTests : XCTestCase

@property (nonatomic) ViewController *vcToTest;

@end


  //////////////////////////////////////////////////////////////////
 //////////////////   Adding a Private Category   /////////////////
//////////////////////////////////////////////////////////////////

@interface ViewController (Test)

- (NSString *)reverseString:(NSString *)stringToReverse;
- (void)doSomethingThatTakesSomeTimesWithCompletionBlock:(void (^)(NSString *))completion;

@end

//////////////////////////////////////////////////////////////////

@implementation JumblifyViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.vcToTest = [[ViewController alloc] init];
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

- (void)testReverseString
{
    NSString *originalString = @"himynameisandy";
    NSString *reversedString = [self.vcToTest reverseString:originalString];
    NSString *expectedReversedString = @"ydnasiemanymih";
    XCTAssertEqualObjects(expectedReversedString, reversedString, @"The reversed string did not match the expected reverse");
}

- (void)testPerformanceReverseString
{
    NSString *originalString = @"himynameisandy";
    [self measureBlock:^{
        [self.vcToTest reverseString:originalString];
    }];
}

- (void)testDoSomethingThatTakesSomeTime
{
    XCTestExpectation *completionExpectation = [self expectationWithDescription:@"Long method"];
    [self.vcToTest doSomethingThatTakesSomeTimesWithCompletionBlock:^(NSString *result) {
        XCTAssertEqualObjects(@"result", result, @"Result was not correct!");
        [completionExpectation fulfill];
    }];
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}


@end
