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

- (NSData*)sha1Hash;

- (NSData*)sha256Hash;

- (NSData*)sha512Hash;

@end
