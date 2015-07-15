#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HotCocoa.h"

@interface NSDataTests : XCTestCase

@end

@implementation NSDataTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testNSDatahexStringLower
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                @"":@"",
                                @"Hello world":@"48656c6c6f20776f726c64",
                                @"a":@"61",
                                @"abc":@"616263",
                                @"message digest":@"6d65737361676520646967657374",
                                @"abcdefghijklmnopqrstuvwxyz":@"6162636465666768696a6b6c6d6e6f707172737475767778797a",
                                @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"4142434445464748494a4b4c4d4e4f505152535455565758595a6162636465666768696a6b6c6d6e6f707172737475767778797a30313233343536373839",
                                @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"3132333435363738393031323334353637383930313233343536373839303132333435363738393031323334353637383930313233343536373839303132333435363738393031323334353637383930"
                                };
    for(NSString *key in testCases)
    {
        NSString *hexResult = [[key dataUsingEncoding:NSUTF8StringEncoding] dm_HexStringLower];
        XCTAssert([testCases[key] isEqualToString:hexResult]);
    }
}

- (void)testNSDatahexStringUpper
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                    @"":@"",
                                    @"Hello world":@"48656C6C6F20776F726C64",
                                    @"a":@"61",
                                    @"abc":@"616263",
                                    @"message digest":@"6D65737361676520646967657374",
                                    @"abcdefghijklmnopqrstuvwxyz":@"6162636465666768696A6B6C6D6E6F707172737475767778797A",
                                    @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"4142434445464748494A4B4C4D4E4F505152535455565758595A6162636465666768696A6B6C6D6E6F707172737475767778797A30313233343536373839",
                                    @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"3132333435363738393031323334353637383930313233343536373839303132333435363738393031323334353637383930313233343536373839303132333435363738393031323334353637383930"
                                };
    for(NSString *key in testCases)
    {
        NSString *hexResult = [[key dataUsingEncoding:NSUTF8StringEncoding] dm_HexStringUpper];
        XCTAssert([testCases[key] isEqualToString:hexResult]);
    }
}

- (void)testNSDatarandomData
{
    // Very few ways to check that data is random. Since we are using arc4random,
    // it seems like it isn't even our problem.
    // We can check the length though.
    for(int i = 0; i < 50; i++)
    {
        NSData *random = [NSData dm_RandomDataWithLength:i];
        XCTAssert([random length] == i);
    }
    
    NSData *random2 = [NSData dm_RandomDataWithLength:0];
    XCTAssert(random2 == nil);
    
    NSData *random3 = [NSData dm_RandomDataWithLength:-1];
    XCTAssert(random3 == nil);
}

@end
