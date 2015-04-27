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

- (NSDictionary*)queryParametersDictionary
{
    [NSException raiseUnimplementedMethod];
    return nil;
}

- (NSString*)queryParameterByName:(NSString*)name
{
    NSDictionary *queryParameters = [self queryParametersDictionary];
    return queryParameters[name];
}

@end
