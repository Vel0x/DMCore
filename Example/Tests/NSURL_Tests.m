//
//  DMCoreTests.m
//  DMCoreTests
//
//  Created by Vel0x on 07/15/2015.
//  Copyright (c) 2015 Vel0x. All rights reserved.
//

@import XCTest;

#import <DMCore/NSURL+DMCore.h>

@interface NSURL_Tests : XCTestCase

@end

@implementation NSURL_Tests

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

- (void)testQueryParametersSimple
{
	NSURL *testUrl = [NSURL URLWithString:@"https://domainname.com/path?param1=Hello&param2=World"];
	NSDictionary *parameters = [testUrl dm_QueryParametersDictionary];
	XCTAssert([parameters count] == 2, @"Pass");
	XCTAssert([parameters[@"param1"] isEqualToString:@"Hello"], @"Pass");
	XCTAssert([parameters[@"param2"] isEqualToString:@"World"], @"Pass");
}

- (void)testQueryParametersHTMLCharacters
{
	NSURL *testUrl = [NSURL URLWithString:@"https://domainname.com/pa&amp;th?param1=Hello&param2=World"];
	NSDictionary *parameters = [testUrl dm_QueryParametersDictionary];
	XCTAssert([parameters count] == 2, @"Pass");
	XCTAssert([parameters[@"param1"] isEqualToString:@"Hello"], @"Pass");
	XCTAssert([parameters[@"param2"] isEqualToString:@"World"], @"Pass");
}

- (void)testQueryParametersQueryStringOnly
{
	NSURL *testUrl = [NSURL URLWithString:@"?param1=Hello&param2=World"];
	NSDictionary *parameters = [testUrl dm_QueryParametersDictionary];
	XCTAssert([parameters count] == 2, @"Pass");
	XCTAssert([parameters[@"param1"] isEqualToString:@"Hello"], @"Pass");
	XCTAssert([parameters[@"param2"] isEqualToString:@"World"], @"Pass");
}

@end

