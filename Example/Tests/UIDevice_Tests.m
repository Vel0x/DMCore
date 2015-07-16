//
//  DMCoreTests.m
//  DMCoreTests
//
//  Created by Vel0x on 07/15/2015.
//  Copyright (c) 2015 Vel0x. All rights reserved.
//

@import XCTest;

#import <DMCore/UIDevice+DMCore.h>

@interface UIDevice_Tests : XCTestCase

@end

@implementation UIDevice_Tests

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

- (void)testMemory
{
	NSNumber *memoryFree = [[UIDevice currentDevice] dm_MemoryFree];
	NSNumber *memoryUsed = [[UIDevice currentDevice] dm_MemoryUsed];
	
	XCTAssert(memoryFree >= 0, @"Pass");
	XCTAssert(memoryUsed >= 0, @"Pass");
}

- (void)testDisk
{
	NSNumber *diskCapacity = [[UIDevice currentDevice] dm_DiskCapacity];
	NSNumber *diskSpaceFree = [[UIDevice currentDevice] dm_DiskSpaceFree];
	
	XCTAssert(diskCapacity >= 0, @"Pass");
	XCTAssert(diskSpaceFree >= 0, @"Pass");
}

- (void)testOther
{
	NSString *modelCode = [[UIDevice currentDevice] dm_ModelCode];
	
	XCTAssert([modelCode isEqualToString:@"x86_64"] || [modelCode isEqualToString:@"i386"], @"Pass");
}

@end

