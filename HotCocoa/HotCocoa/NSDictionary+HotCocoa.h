//
//  NSDictionary+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NSDictionary_HotCocoa)

/**
 *	@brief  Creates a JSON representation of the dictionary
 *
 *	@return On success, the JSON representation of the dictionary as an NSString. On failure, nil.
 */
- (NSString*)dm_JSONRepresentation;

/**
 *	@brief  Creates a JSON representation of the dictionary
 *
 *	@param prettyPrint A flag of whether the JSON should be "pretty printed" or not
 *
 *	@return On success, the JSON representation of the dictionary as an NSString. On failure, nil.
 */
- (NSString*)dm_JSONRepresentationWithPrettyPrint:(BOOL)prettyPrint;

/**
 *	@brief  Returns a random object from within the dictionary
 *
 *  @return Returns a random object from within the dictionary
 */
- (id)dm_RandomObject;


@end
