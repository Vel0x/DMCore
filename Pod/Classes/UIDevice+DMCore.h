//
//  UIDevice+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 15/07/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIDevice (DMCore)

/**
 *	@brief  Returns the free (available) memory of the device in bytes
 *
 *	@return The free memory of the device
 */
- (NSNumber*)dm_MemoryFree;

/**
 *	@brief  Returns the used (unavailable) memory of the device in bytes
 *
 *	@return The used memory of the device
 */
- (NSNumber*)dm_MemoryUsed;

/**
 *	@brief  Returns the capacity of the disk in bytes
 *
 *	@return The disk capacity
 */
- (NSNumber*)dm_DiskCapacity;

/**
 *	@brief  Returns the free disk space in bytes
 *
 *	@return The free disk space
 */
- (NSNumber*)dm_DiskSpaceFree;

/**
 *	@brief  Returns the model code of the device. e.g. "iPad2,1"
 *
 *	@return The model code of the device
 */
- (NSString*)dm_ModelCode;

@end
