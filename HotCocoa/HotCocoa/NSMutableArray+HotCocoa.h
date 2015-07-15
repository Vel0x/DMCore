//
//  NSMutableArray+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 26/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (HotCocoa)

/**
 *	@brief  Shuffles the array into a random order
 */
- (void)dm_ShuffleInPlace;

/**
 *	@brief  Reverses the array in place
 */
- (void)dm_ReverseInPlace;

/**
 *	@brief  Removes the duplicates from the array in place
 */
- (void)dm_RemoveDuplicatesInPlace;

@end
