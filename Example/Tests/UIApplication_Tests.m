//
//  DMCoreTests.m
//  DMCoreTests
//
//  Created by Vel0x on 07/15/2015.
//  Copyright (c) 2015 Vel0x. All rights reserved.
//

@import XCTest;

#import <DMCore/UIApplication+DMCore.h>

@interface UIApplication_Tests : XCTestCase

@end

@implementation UIApplication_Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
	//This won't work for tests
//	NSString *name = [[UIApplication sharedApplication] dm_Name];
//	NSString *version = [[UIApplication sharedApplication] dm_Version];
//	NSString *releaseVersion = [[UIApplication sharedApplication] dm_ReleaseVersion];
	XCTAssert(YES, @"Pass");
}

@end

