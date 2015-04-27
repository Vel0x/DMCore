//
//  NSString+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSString+HotCocoa.h"

@implementation NSString (HotCocoa)

- (NSData*)md5Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data md5Hash];
}

- (NSData*)sha1Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data sha1Hash];
}

- (NSData*)sha256Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data sha256Hash];
}

- (NSData*)sha512Hash
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data sha512Hash];
}

@end
