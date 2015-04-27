//
//  NSData+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSData+HotCocoa.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (HotCocoa)

- (NSData*)md5Hash
{
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5([self bytes], (CC_LONG)[self length], digest);
    return [NSData dataWithBytes:digest length:CC_MD5_DIGEST_LENGTH];
}

- (NSString*)md5HashHexString
{
    return [[self md5Hash] hexStringUpper];
}

- (NSData*)sha1Hash
{
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1([self bytes], (CC_LONG)[self length], digest);
    return [NSData dataWithBytes:digest length:CC_SHA1_DIGEST_LENGTH];
}

- (NSString*)sha1HashHexString
{
    return [[self sha1Hash] hexStringUpper];
}

- (NSData*)sha256Hash
{
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256([self bytes], (CC_LONG)[self length], digest);
    return [NSData dataWithBytes:digest length:CC_SHA256_DIGEST_LENGTH];
}

- (NSString*)sha256HashHexString
{
    return [[self sha256Hash] hexStringUpper];
}

- (NSData*)sha512Hash
{
    unsigned char digest[CC_SHA512_DIGEST_LENGTH];
    CC_SHA512([self bytes], (CC_LONG)[self length], digest);
    return [NSData dataWithBytes:digest length:CC_SHA512_DIGEST_LENGTH];
}

- (NSString*)sha512HashHexString
{
    return [[self sha512Hash] hexStringUpper];
}

- (NSString*)hexStringLower
{
    return [self hexStringWithAlphabet:"0123456789abcdef"];
}

- (NSString*)hexStringUpper
{
    return [self hexStringWithAlphabet:"0123456789ABCDEF"];
}

+ (NSData*)randomDataWithLength:(int)length
{
    unsigned char *randomData = malloc(length * sizeof(char));
    
    if(!randomData)
    {
        return nil;
    }
    
    arc4random_buf(randomData, length);
    
    if(length <= 0)
    {
        return nil;
    }

    return [NSData dataWithBytes:randomData length:length];
}


#pragma mark - 
#pragma mark Private

- (NSString*)hexStringWithAlphabet:(char*)alphabet
{
    long bufferLength = ([self length] * 2) + 1;
    char *hexStringBuffer = malloc(bufferLength * sizeof(char));
    const unsigned char *data = [self bytes];
    
    hexStringBuffer[bufferLength - 1] = '\0';
    
    if([self length] == 0)
    {
        return @"";
    }
    
    if(!hexStringBuffer)
    {
        return @"";
    }
    
    for (int i = 0; i < [self length]; i++)
    {
        char lower = '\0';
        char upper = '\0';
        
        lower = data[i] & 0x0F;
        upper = (data[i] >> 4) & 0x0F;
        
        hexStringBuffer[i*2] = alphabet[upper];
        hexStringBuffer[i*2 + 1] = alphabet[lower];
    }
    
    return [NSString stringWithUTF8String:hexStringBuffer];
}

@end
