//
//  NSString+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSString+HotCocoa.h"

@implementation NSString (HotCocoa)

- (NSData*)dm_MD5Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data dm_MD5Hash];
}

- (NSData*)dm_SHA1Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data dm_SHA1Hash];
}

- (NSData*)dm_SHA256Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data dm_SHA256Hash];
}

- (NSData*)dm_SHA512Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data dm_SHA512Hash];
}

- (NSString*)dm_RandomCharacter
{
    int index = arc4random_uniform((int)[self length]);
    return [self substringWithRange:NSMakeRange(index, 1)];
}

+ (NSString*)dm_RandomStringWithAlphabet:(NSString*)alphabet withLength:(NSInteger)length
{
    NSMutableString *rand = [[NSMutableString alloc] initWithCapacity:length];
    for(NSInteger i = 0; i < length; i++)
    {
        [rand appendString:[alphabet dm_RandomCharacter]];
    }
    return rand;
}

@end
