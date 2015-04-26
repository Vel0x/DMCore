//
//  NSData+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSData+HotCocoa.h"
#import "NSException+HotCocoa.h"

@implementation NSData (HotCocoa)

- (NSData*)md5Hash
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)md5HashHexString
{
    return [[self md5Hash] hexStringUpper];
}

- (NSData*)sha1Hash
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)sha1HashHexString
{
    return [[self sha1Hash] hexStringUpper];
}

- (NSData*)sha256Hash
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)sha256HashHexString
{
    return [[self sha256Hash] hexStringUpper];
}

- (NSData*)sha512Hash
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)sha512HashHexString
{
    return [[self sha512Hash] hexStringUpper];
}

- (NSData*)sha3Hash
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)sha3HashHexString
{
    return [[self sha3Hash] hexStringUpper];
}

- (NSString*)hexStringLower
{
    return [self hexStringWithAlphabet:"0123456789abcdef"];
}

- (NSString*)hexStringUpper
{
    return [self hexStringWithAlphabet:"0123456789ABCDEF"];
}

- (NSData*)randomDataWithLength:(int)length
{
    [NSException raiseUnimplementedMethod];
    return nil;
}


#pragma mark - 
#pragma mark Private

- (NSString*)hexStringWithAlphabet:(char*)alphabet
{
    long bufferLength = ([self length] * 2) + 1;
    char *hexStringBuffer = malloc(bufferLength * sizeof(char));
    const unsigned char *data = [self bytes];
    
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
        upper = data[i] & 0xF0;
        
        hexStringBuffer[i*2] = alphabet[upper];
        hexStringBuffer[i*2 + 1] = alphabet[lower];
    }
    
    return [NSString stringWithUTF8String:hexStringBuffer];
}

@end
