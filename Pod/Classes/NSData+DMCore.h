//
//  NSData+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *	@brief  A collection of useful methods for NSData
 */
@interface NSData (DMCore)

/**
 *	@brief  Calculates the MD5 hash of the data
 *
 *	@return The MD5 hash of the data
 */
- (NSData*)dm_MD5Hash;

/**
 *	@brief  Calculates the MD5 hash of the data as a hex string
 *
 *	@return The MD5 hash of the data as a hex string
 */
- (NSString*)dm_MD5HashHexString;

/**
 *	@brief  Calculates the SHA-1 hash of the data
 *
 *	@return The SHA-1 hash of the data
 */
- (NSData*)dm_SHA1Hash;

/**
 *	@brief  Calculates the SHA-1 hash of the data as a hex string
 *
 *	@return The SHA-1 hash of the data as a hex string
 */
- (NSString*)dm_SHA1HashHexString;

/**
 *	@brief  Calculates the SHA-256 hash of the data
 *
 *	@return The SHA-256 hash of the data
 */
- (NSData*)dm_SHA256Hash;

/**
 *	@brief  Calculates the SHA-256 hash of the data as a hex string
 *
 *	@return The SHA-256 hash of the data as a hex string
 */
- (NSString*)dm_SHA256HashHexString;

/**
 *	@brief  Calculates the SHA-512 hash of the data
 *
 *	@return The SHA-512 hash of the data
 */
- (NSData*)dm_SHA512Hash;

/**
 *	@brief  Calculates the SHA-512 hash of the data as a hex string
 *
 *	@return The SHA-512 hash of the data as a hex string
 */
- (NSString*)dm_SHA512HashHexString;

/**
 *	@brief  Converts the data to a lower case hex string
 *
 *	@return A lower case hex string representation of the data
 */
- (NSString*)dm_HexStringLower;

/**
 *	@brief  Converts the data to an upper case hex string
 *
 *	@return An upper case hex string representation of the data
 */
- (NSString*)dm_HexStringUpper;

/**
 *	@brief  Returns random data of the specified length
 *
 *	@param length The length of the random data to return
 *
 *	@return Random data of the supplied length
 */
+ (NSData*)dm_RandomDataWithLength:(int)length;


@end
