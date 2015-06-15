//
//  OCMockPlaceTests.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "Place.h"

@interface OCMockPlaceTests : XCTestCase

@end

@implementation OCMockPlaceTests

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

//=======================================================//
//-------- Using OCMock to create iOS Unit Tests --------//
//=======================================================//

/*
 In general, here are the steps:
 ```````````````````````````````
 1-   Create a mock object.
 2-   Make expectations.
 3-   Execute the code under test.
 4-   Verify your expectations.
 
 */

//-(void)testGetPlaceDetails
//{
//    Place *actualPlaceInstance = [[Place alloc] init];
//    id partialMockPlace = [OCMockObject partialMockForObject:actualPlaceInstance];
//    
//    NSString *name = @"JFK International Airport";
//    [[partialMockPlace expect] encodeName:name]; //expect encodeName to be called
//    
//    [actualPlaceInstance getEncodedName:name]; //call getEncodedName on the actual object
//    
//    [partialMockPlace verify]; //verify your test!
//}


//-(void)testGetPlaceDetails
//{
//    Place *actualPlaceInstance = [[Place alloc] init];
//    id partialMockPlace = [OCMockObject partialMockForObject:actualPlaceInstance];
//    
//    __block BOOL hasCalledBack = NO;
//    
//    void (^completionBlock)(id result) = ^(id result){
//        
//        NSLog(@"Completion Block!");
//        hasCalledBack = YES;
//        //Process result
//    };
//    
//    [partialMockPlace getPlaceDetails:completionBlock];
//    
//    //This is what the next piece of code does:
//    //1- Wait until the results come.. This code will wait for 20 seconds.
//    //2- Check for the hasCalledBack value; if it is true this mean that the completion block has been    executed. If not, it either means that the network call failed and has been terminated or it still     needs more time, in this case increase the waiting time. You can also define a failureBlock to be called when the NSURLConnectionDelegate's didFailWithError method is triggered
//    //3- Assert that hasCalledBack is equal to NO.
//    //4- Verify the test
//    
//    NSDate *loopUntil = [NSDate dateWithTimeIntervalSinceNow:20];//1
//    
//    while (hasCalledBack == NO &amp;&amp; [loopUntil timeIntervalSinceNow] &gt; 0) {
//        
//        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:loopUntil];
//        
//    } //2
//    
//    XCTAssertEqual(hasCalledBack, NO, @"Test failed. Either because the waiting time is not long enough or because the NSURLConnection has failed"); //3
//    
//    [partialMockPlace verify]; //4
//}

@end
