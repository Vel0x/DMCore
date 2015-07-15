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

/**
 *	@brief  Gets the MD5 hash of the string. This method assumes UTF8 encoding.
 *
 *	@return The MD5 hash of the string
 */
- (NSData*)dm_MD5Hash;

/**
 *	@brief  Gets the SHA1 hash of the string. This method assumes UTF8 encoding.
 *
 *	@return The SHA1 hash of the string
 */
- (NSData*)dm_SHA1Hash;

/**
 *	@brief  Gets the SHA256 hash of the string. This method assumes UTF8 encoding.
 *
 *	@return The SHA256 hash of the string
 */
- (NSData*)dm_SHA256Hash;

/**
 *	@brief  Gets the SHA512 hash of the string. This method assumes UTF8 encoding.
 *
 *	@return The SHA512 hash of the string
 */
- (NSData*)dm_SHA512Hash;

/**
 *	@brief  Selects and returns a random character from the string
 *
 *	@return A random character from the string
 */
- (NSString*)dm_RandomCharacter;

/**
 *	@brief  Constructs a random string from the supplied alphabet with the supplied length
 *
 *	@param alphabet The alphabet to select characters from
 *	@param length   The length of the random string to be returned
 *
 *	@return A random string of characters from the supplied alphabet with the supplied length
 */
+ (NSString*)dm_RandomStringWithAlphabet:(NSString*)alphabet withLength:(NSInteger)length;

@end
