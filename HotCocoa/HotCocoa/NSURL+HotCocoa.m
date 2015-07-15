//
//  NSURL+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSURL+HotCocoa.h"
#import "NSException+HotCocoa.h"

@implementation NSURL (HotCocoa)

- (NSDictionary*)dm_QueryParametersDictionary
{
    [NSException dm_RaiseUnimplementedMethod];
    return nil;
}

- (NSString*)dm_QueryParameterByName:(NSString*)name
{
    NSDictionary *queryParameters = [self dm_QueryParametersDictionary];
    return queryParameters[name];
}

@end
