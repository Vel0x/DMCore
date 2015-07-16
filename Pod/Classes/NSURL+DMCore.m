//
//  NSURL+DMCore.m
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSURL+DMCore.h"
#import "NSException+DMCore.h"

@implementation NSURL (DMCore)

- (NSDictionary*)dm_QueryParametersDictionary
{
	NSMutableDictionary *parametersDict = [[NSMutableDictionary alloc] init];
	
	NSString *queryString = [self query];
	
	NSArray *parameters = [queryString componentsSeparatedByString:@"&"];
	
	for (NSString *parameter in parameters)
	{
		NSArray *parts = [parameter componentsSeparatedByString:@"="];
		
		if ([parts count] == 2)
		{
			parametersDict[parts[0]] = parts[1];
		}
	}
	
    return parametersDict;
}

- (NSString*)dm_QueryParameterByName:(NSString*)name
{
    NSDictionary *queryParameters = [self dm_QueryParametersDictionary];
    return queryParameters[name];
}

@end
