//
//  NSString+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+HotCocoa.h"

@interface NSString (HotCocoa)

- (NSData*)md5Hash;

- (NSData*)md5HashHexString;

- (NSData*)sha1Hash;

- (NSData*)sha1HashHexString;

- (NSData*)sha256Hash;

- (NSData*)sha256HashHexString;

- (NSData*)sha512Hash;

- (NSData*)sha512HashHexString;

- (NSData*)sha3Hash;

- (NSData*)sha3HashHexString;

@end
