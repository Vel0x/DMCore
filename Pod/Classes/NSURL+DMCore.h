//
//  NSURL+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *	@brief  A collection of useful methods for NSURL
 */
@interface NSURL (DMCore)

/**
 *	@brief  Converts and returns the query parameters as a dictionary
 *
 *	@return The query parameters as a dictionary
 */
- (NSDictionary*)dm_QueryParametersDictionary;

/**
 *	@brief  Gets a query parameter from the URL by name
 *
 *	@param name The name of the query parameter to fetch
 *
 *	@return The query parameter with the supplied name
 */
- (NSString*)dm_QueryParameterByName:(NSString*)name;

@end
