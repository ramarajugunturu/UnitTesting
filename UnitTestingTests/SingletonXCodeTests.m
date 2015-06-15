//
//  SingletonXCodeTests.m
//  UnitTesting
//
//  Created by Rama Gunturu on 4/14/15.
//  Copyright (c) 2015 Rama Gunturu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SingletonByChoice.h"

@interface SingletonXCodeTests : XCTestCase

@end

@implementation SingletonXCodeTests

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


#pragma mark - helper methods

- (SingletonByChoice *)createUniqueInstance {
    
    return [[SingletonByChoice alloc] init];
    
}

- (SingletonByChoice *)getSharedInstance {
    
    return [SingletonByChoice sharedInstance];
    
}

#pragma mark - tests

- (void)testSingletonSharedInstanceCreated {
    
    XCTAssertNotNil([self getSharedInstance]);
    
}

- (void)testSingletonUniqueInstanceCreated {
    
    XCTAssertNotNil([self createUniqueInstance]);
    
}

- (void)testSingletonReturnsSameSharedInstanceTwice {
    
    SingletonByChoice *s1 = [self getSharedInstance];
    XCTAssertEqual(s1, [self getSharedInstance]);
    
}

- (void)testSingletonSharedInstanceSeparateFromUniqueInstance {
    
    SingletonByChoice *s1 = [self getSharedInstance];
    XCTAssertNotEqual(s1, [self createUniqueInstance]);
}

- (void)testSingletonReturnsSeparateUniqueInstances {
    
    SingletonByChoice *s1 = [self createUniqueInstance];
    XCTAssertNotEqual(s1, [self createUniqueInstance]);
}


@end
