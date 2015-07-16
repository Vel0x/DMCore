//
//  DMCoreTests.m
//  DMCoreTests
//
//  Created by Vel0x on 07/15/2015.
//  Copyright (c) 2015 Vel0x. All rights reserved.
//

@import XCTest;

#import <DMCore/NSException+DMCore.h>

@interface NSException_Tests : XCTestCase

@end

@implementation NSException_Tests

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

/**
 *	@brief  Tests throwing an unimplemented method exception with a custom name
 */
- (void)testMethodSpecified
{
	BOOL exceptionThrownAndCaught = NO;
	
	@try
	{
		[NSException dm_RaiseUnimplementedMethodWithName:"Hello World"];
	}
	@catch (NSException *exception)
	{
		exceptionThrownAndCaught = YES;
		XCTAssert([[exception name] isEqualToString:@"Unimplemented Method"], @"Pass");
		XCTAssert([[exception reason] hasSuffix:@"Hello World"], @"Pass");
	}
	XCTAssert(exceptionThrownAndCaught == YES, @"Pass");
}

/**
 *	@brief  Tests throwing an unimplemented with the name derived automatically
 */
- (void)testNoMethodSpecified
{
	BOOL exceptionThrownAndCaught = NO;
	
	@try
	{
		[NSException dm_RaiseUnimplementedMethod];
	}
	@catch (NSException *exception)
	{
		exceptionThrownAndCaught = YES;
		XCTAssert([[exception name] isEqualToString:@"Unimplemented Method"], @"Pass");
		XCTAssert([[exception reason] hasSuffix:@"[NSException_Tests testNoMethodSpecified]"], @"Pass");
	}
	XCTAssert(exceptionThrownAndCaught == YES, @"Pass");
}

/**
 *	@brief  Tests throwing an unimplemented exception within a block
 */
- (void)testBlock
{
	void (^testBlock)() = ^void(){
		BOOL exceptionThrownAndCaught = NO;
		
		@try
		{
			[NSException dm_RaiseUnimplementedMethod];
		}
		@catch (NSException *exception)
		{
			exceptionThrownAndCaught = YES;
			XCTAssert([[exception name] isEqualToString:@"Unimplemented Method"], @"Pass");
			XCTAssert([[exception reason] hasSuffix:@"[NSException_Tests testBlock]"], @"Pass");
		}
		XCTAssert(exceptionThrownAndCaught == YES, @"Pass");
	};
	
	testBlock();
	
	dispatch_async(dispatch_get_main_queue(), ^{
		testBlock();
	});
	
}

@end

