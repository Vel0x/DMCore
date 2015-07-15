//
//  NSDictionary+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSDictionary+HotCocoa.h"

@implementation NSDictionary (HotCocoa)

- (NSString*)dm_JSONRepresentation
{
    return [self dm_JSONRepresentationWithPrettyPrint:NO];
}

- (NSString*)dm_JSONRepresentationWithPrettyPrint:(BOOL)prettyPrint
{
    NSJSONWritingOptions pretty = prettyPrint ? NSJSONWritingPrettyPrinted : 0;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:pretty error:&error];
    
    if (jsonData)
    {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    else
    {
        return @"{}";
    }
}

- (id)dm_RandomObject
{
    int index = arc4random_uniform((int)[self count]);
    NSArray *keys = [self allKeys];
    return self[keys[index]];
}

@end
