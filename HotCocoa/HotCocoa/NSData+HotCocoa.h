//
//  NSData+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (HotCocoa)

/**
 *	@brief  Calculates the MD5 hash of the data
 *
 *	@return The MD5 hash of the data
 */
- (NSData*)md5Hash;

/**
 *	@brief  Calculates the MD5 hash of the data as a hex string
 *
 *	@return The MD5 hash of the data as a hex string
 */
- (NSString*)md5HashHexString;

/**
 *	@brief  Calculates the SHA-1 hash of the data
 *
 *	@return The SHA-1 hash of the data
 */
- (NSData*)sha1Hash;

/**
 *	@brief  Calculates the SHA-1 hash of the data as a hex string
 *
 *	@return The SHA-1 hash of the data as a hex string
 */
- (NSString*)sha1HashHexString;

/**
 *	@brief  Calculates the SHA-256 hash of the data
 *
 *	@return The SHA-256 hash of the data
 */
- (NSData*)sha256Hash;

/**
 *	@brief  Calculates the SHA-256 hash of the data as a hex string
 *
 *	@return The SHA-256 hash of the data as a hex string
 */
- (NSString*)sha256HashHexString;

/**
 *	@brief  Calculates the SHA-512 hash of the data
 *
 *	@return The SHA-512 hash of the data
 */
- (NSData*)sha512Hash;

/**
 *	@brief  Calculates the SHA-512 hash of the data as a hex string
 *
 *	@return The SHA-512 hash of the data as a hex string
 */
- (NSString*)sha512HashHexString;

/**
 *	@brief  Converts the data to a lower case hex string
 *
 *	@return A lower case hex string representation of the data
 */
- (NSString*)hexStringLower;

/**
 *	@brief  Converts the data to an upper case hex string
 *
 *	@return An upper case hex string representation of the data
 */
- (NSString*)hexStringUpper;

/**
 *	@brief  Returns random data of the specified length
 *
 *	@param length The length of the random data to return
 *
 *	@return Random data of the supplied length
 */
- (NSData*)randomDataWithLength:(int)length;


@end
