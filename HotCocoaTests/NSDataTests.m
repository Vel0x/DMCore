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

- (void)testNSDataMD5Hashing
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                    @"":@"d41d8cd98f00b204e9800998ecf8427e",
                                    @"Hello world":@"3e25960a79dbc69b674cd4ec67a72c62",
                                    @"a":@"0cc175b9c0f1b6a831c399e269772661",
                                    @"abc":@"900150983cd24fb0d6963f7d28e17f72",
                                    @"message digest":@"f96b697d7cb7938d525a2f31aaf161d0",
                                    @"abcdefghijklmnopqrstuvwxyz":@"c3fcd3d76192e4007dfb496cca67e13b",
                                    @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"d174ab98d277d9f5a5611c2c9f419d9f",
                                    @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"57edf4a22be3c955ac49da2e2107b67a"
                                };
    for(NSString *key in testCases)
    {
        NSString *hashResult = [[[key dataUsingEncoding:NSUTF8StringEncoding] md5Hash] hexStringLower];
        XCTAssert([testCases[key] isEqualToString:hashResult]);
    }
}

- (void)testNSDataSHA1Hashing
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                    @"":@"da39a3ee5e6b4b0d3255bfef95601890afd80709",
                                    @"Hello world":@"7b502c3a1f48c8609ae212cdfb639dee39673f5e",
                                    @"a":@"86f7e437faa5a7fce15d1ddcb9eaeaea377667b8",
                                    @"abc":@"a9993e364706816aba3e25717850c26c9cd0d89d",
                                    @"message digest":@"c12252ceda8be8994d5fa0290a47231c1d16aae3",
                                    @"abcdefghijklmnopqrstuvwxyz":@"32d10c7b8cf96570ca04ce37f2a19d84240d3a89",
                                    @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"761c457bf73b14d27e9e9265c46f4b4dda11f940",
                                    @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"50abf5706a150990a08b2c5ea40fa0e585554732"
                                };
    for(NSString *key in testCases)
    {
        NSString *hashResult = [[[key dataUsingEncoding:NSUTF8StringEncoding] sha1Hash] hexStringLower];
        XCTAssert([testCases[key] isEqualToString:hashResult]);
    }
}

- (void)testNSDataSHA256Hashing
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                    @"":@"e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
                                    @"Hello world":@"64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c",
                                    @"a":@"ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb",
                                    @"abc":@"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad",
                                    @"message digest":@"f7846f55cf23e14eebeab5b4e1550cad5b509e3348fbc4efa3a1413d393cb650",
                                    @"abcdefghijklmnopqrstuvwxyz":@"71c480df93d6ae2f1efad1447c66c9525e316218cf51fc8d9ed832f2daf18b73",
                                    @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"db4bfcbd4da0cd85a60c3c37d3fbd8805c77f15fc6b1fdfe614ee0a7c8fdb4c0",
                                    @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"f371bc4a311f2b009eef952dd83ca80e2b60026c8e935592d0f9c308453c813e"
                                };
    for(NSString *key in testCases)
    {
        NSString *hashResult = [[[key dataUsingEncoding:NSUTF8StringEncoding] sha256Hash] hexStringLower];
        XCTAssert([testCases[key] isEqualToString:hashResult]);
    }
}

- (void)testNSDataSHA512Hashing
{
    //TODO: Have better test cases which use binary data
    NSDictionary *testCases = @{
                                    @"":@"cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e",
                                    @"Hello world":@"b7f783baed8297f0db917462184ff4f08e69c2d5e5f79a942600f9725f58ce1f29c18139bf80b06c0fff2bdd34738452ecf40c488c22a7e3d80cdf6f9c1c0d47",
                                    @"a":@"1f40fc92da241694750979ee6cf582f2d5d7d28e18335de05abc54d0560e0f5302860c652bf08d560252aa5e74210546f369fbbbce8c12cfc7957b2652fe9a75",
                                    @"abc":@"ddaf35a193617abacc417349ae20413112e6fa4e89a97ea20a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e2a9ac94fa54ca49f",
                                    @"message digest":@"107dbf389d9e9f71a3a95f6c055b9251bc5268c2be16d6c13492ea45b0199f3309e16455ab1e96118e8a905d5597b72038ddb372a89826046de66687bb420e7c",
                                    @"abcdefghijklmnopqrstuvwxyz":@"4dbff86cc2ca1bae1e16468a05cb9881c97f1753bce3619034898faa1aabe429955a1bf8ec483d7421fe3c1646613a59ed5441fb0f321389f77f48a879c7b1f1",
                                    @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789":@"1e07be23c26a86ea37ea810c8ec7809352515a970e9253c26f536cfc7a9996c45c8370583e0a78fa4a90041d71a4ceab7423f19c71b9d5a3e01249f0bebd5894",
                                    @"12345678901234567890123456789012345678901234567890123456789012345678901234567890":@"72ec1ef1124a45b047e8b7c75a932195135bb61de24ec0d1914042246e0aec3a2354e093d76f3048b456764346900cb130d2a4fd5dd16abb5e30bcb850dee843"
                                };
    for(NSString *key in testCases)
    {
        NSString *hashResult = [[[key dataUsingEncoding:NSUTF8StringEncoding] sha512Hash] hexStringLower];
        XCTAssert([testCases[key] isEqualToString:hashResult]);
    }
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
        NSString *hexResult = [[key dataUsingEncoding:NSUTF8StringEncoding] hexStringLower];
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
        NSString *hexResult = [[key dataUsingEncoding:NSUTF8StringEncoding] hexStringUpper];
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
        NSData *random = [NSData randomDataWithLength:i];
        XCTAssert([random length] == i);
    }
    
    NSData *random2 = [NSData randomDataWithLength:0];
    XCTAssert(random2 == nil);
    
    NSData *random3 = [NSData randomDataWithLength:-1];
    XCTAssert(random3 == nil);
}

@end
