//
//  NSArray+DMCore.m
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSArray+DMCore.h"
#import "NSMutableArray+DMCore.h"
#import "NSException+DMCore.h"

@implementation NSArray (DMCore)

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

- (NSArray*)dm_Shuffle
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray dm_ShuffleInPlace];
    return newArray;
}

- (id)dm_RandomObject
{
    int index = arc4random_uniform((int)[self count]);
    return self[index];
}

- (id)dm_RandomObjectInRange:(NSRange)objectRange
{
    NSInteger location = objectRange.location;
    NSInteger length = 0;
    
    if(location > [self count])
    {
        return nil;
    }
    
    if(objectRange.location + objectRange.length >= [self count])
    {
        length = [self count] - objectRange.location;
    }
    else
    {
        length = objectRange.length;
    }
    
    u_int32_t index = arc4random_uniform((u_int32_t)length) + (u_int32_t)location;
    return self[index];
}

- (NSArray*)dm_Reverse
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray dm_ReverseInPlace];
    return newArray;
}

- (NSArray*)dm_RemoveDuplicates
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray dm_RemoveDuplicatesInPlace];
    return newArray;
}

- (id)dm_Head
{
	return [self firstObject];
}

- (NSArray*)dm_Tail
{
    return [self subarrayWithRange:NSMakeRange(1, [self count] -1)];
}

- (NSArray*)dm_Map:(id (^)(id object))block
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
    
    for(NSInteger i = 0; i < [self count]; i++)
    {
        [newArray addObject:block(self[i])];
    }
    
    return newArray;
}

- (BOOL)dm_Any:(BOOL (^)(id object))block
{
    for(NSInteger i = 0; i < [self count]; i++)
    {
        if(block(self[i]))
        {
            return YES;
        }
    }
    
    return NO;
}

- (BOOL)dm_All:(BOOL (^)(id object))block
{
    for(NSInteger i = 0; i < [self count]; i++)
    {
        if(!block(self[i]))
        {
            return NO;
        }
    }
    
    return YES;
}

- (NSArray*)dm_Select:(BOOL (^)(id object))block
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
    for(NSInteger i = 0; i < [self count]; i++)
    {
        if(block(self[i]))
        {
            [newArray addObject:self[i]];
        }
    }
    
    return newArray;
}

- (NSArray*)dm_Reject:(BOOL (^)(id object))block
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
    for(NSInteger i = 0; i < [self count]; i++)
    {
        if(!block(self[i]))
        {
            [newArray addObject:self[i]];
        }
    }
    
    return newArray;
}

- (id)dm_Reduce:(id (^)(id object1, id object2))block withBase:(id)baseObject
{
    id total = baseObject;
    
    for(NSInteger i = 0; i < [self count]; i++)
    {
        total = block(total,self[i]);
    }
    
    return total;
}

@end
