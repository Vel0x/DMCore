//
//  NSException+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//


/**
 *	@brief  A collection of useful methods for NSException
 */
#import <Foundation/Foundation.h>

@interface NSException (DMCore)

/**
 *	@brief  Raises an exception with the method name where this was called 
 *			in the description signifying that the method which called this is
 *			not yet implemented.
 */
+ (void)dm_RaiseUnimplementedMethod;

/**
 *	@brief  Raises an exception signifying that the calling method is not yet
 *			implemented.
 *
 *	@param methodName	The method name to use in the NSException description
 */
+ (void)dm_RaiseUnimplementedMethodWithName:(const char*)methodName;

@end
