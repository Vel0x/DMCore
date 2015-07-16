//
//  UIApplication+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 15/07/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <UIKit/UIkit.h>

@interface UIApplication (DMCore)

/**
 *	@brief  Returns the app name
 *
 *	@return The app name
 */
- (NSString*)dm_Name;

/**
 *	@brief  Returns the current applications version
 * 
 *	@discussion	The details returned are defined by CFBundleVersion
 *
 *	@return The current applications version
 */
- (NSString*)dm_Version;

/**
 *	@brief  Returns the current applications release version
 *
 *	@discussion	The details returned are defined by CFBundleShortVersionString
 *
 *	@return The current applications release version
 */
- (NSString*)dm_ReleaseVersion;


@end
