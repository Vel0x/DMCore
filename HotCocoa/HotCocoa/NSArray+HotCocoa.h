//
//  NSArray+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (HotCocoa)

/**
 *	@brief  Creates a JSON representation of the array
 *
 *	@return On success, the JSON representation of the array as an NSString. On failure, nil.
 */
- (NSString*)JSONRepresentation;

/**
 *	@brief  Shuffles the array into a random order
 */
- (void)shuffle;

/**
 *	@brief  Returns a random object from within the array
 *
 *  @return Returns a random object from within the array
 */
- (id)randomObject;

/**
 *	@brief  Returns a random object from a range within the array
 *
 *	@param objectRange The range within which the random object should be selected
 */
- (void)randomObjectInRange:(NSRange)objectRange;

/**
 *	@brief  Reverses the array in place
 */
- (void)reverse;

/**
 *	@brief  Creates a new instance of the array, but reversed
 *
 *	@return A new array, which is the reverse of the current
 */
- (NSArray*)reversed;

/**
 *	@brief  Removes the duplicates from the array in place
 */
- (void)removeDuplicates;

/**
 *	@brief  Creates a new instance of the array, but with duplicates removed
 *
 *	@return A new array, with the duplicates removed
 */
- (NSArray*)duplicatesRemoved;

/**
 *	@brief  Gets the first object in the array
 *
 *	@return The first object in the array
 */
- (id)head;

/**
 *	@brief  Creates an new array with all the same objects, in the same order, 
 *          except for the very first element.
 *
 *	@return A new array, with all objects except the first, in the same order
 */
- (NSArray*)tail;

/**
 *	@brief  Maps a supplied block onto every element in the array
 *
 *	@param block The block which is applied to every element
 *
 *	@return A new array with only the matching elements in it
 */
- (NSArray*)map:(id (^)(id object))block;

/**
 *	@brief  Checks if any element in the array matches the condition
 *
 *	@param block The block which acts as the condition
 *
 *	@return YES if at least one element matches the condition, otherwise NO
 */
- (BOOL)any:(BOOL (^)(id object))block;

/**
 *	@brief  Checks if all elements in the array match the condition
 *
 *	@param block The block which acts as the condition
 *
 *	@return YES if all elements match the condition, otherwise NO
 */
- (BOOL)all:(BOOL (^)(id object))block;

/**
 *	@brief  Selects the elements which match the supplied condition
 *
 *	@param block The block which each element of the array is filtered through
 *
 *	@return A new array with only the matching elements in it
 */
- (NSArray*)select:(BOOL (^)(id object))block;

/**
 *	@brief  Selects the elements which do not match the supplied condition
 *
 *	@param block The block which each element of the array is filtered through
 *
 *	@return A new array with only the non-matching elements in it
 */
- (NSArray*)reject:(BOOL (^)(id object))block;

/**
 *	@brief  Performs a reduce (or fold) operation, to the right, on the array 
 *          with the supplied operation and base case.
 *
 *	@param block      The fold operation
 *	@param baseObject The base object for the folder
 *
 *	@return The result of applying the fold operation to the array
 */
- (id)reduce:(id (^)(id object1, id object2))block withBase:(id)baseObject;

@end
