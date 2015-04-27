//
//  NSArray+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSArray+HotCocoa.h"
#import "NSMutableArray+HotCocoa.h"
#import "NSException+HotCocoa.h"

@implementation NSArray (HotCocoa)

- (NSString*)JSONRepresentation
{
    return [self JSONRepresentationWithPrettyPrint:NO];
}

- (NSString*)JSONRepresentationWithPrettyPrint:(BOOL)prettyPrint
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

- (NSArray*)shuffled
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray shuffle];
    return newArray;
}

- (id)randomObject
{
    int index = arc4random_uniform((int)[self count]);
    return self[index];
}

- (id)randomObjectInRange:(NSRange)objectRange
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

- (NSArray*)reversed
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray reverse];
    return newArray;
}

- (NSArray*)duplicatesRemoved
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithArray:self];
    [newArray removeDuplicates];
    return newArray;
}

- (id)head
{
    if([self count] > 0)
    {
        return [self objectAtIndex:0];
    }
    
    return nil;
}

- (NSArray*)tail
{
    return [self subarrayWithRange:NSMakeRange(1, [self count] -1)];
}

- (NSArray*)map:(id (^)(id object))block
{
    NSMutableArray *newArray = [[NSMutableArray alloc] initWithCapacity:[self count]];
    
    for(NSInteger i = 0; i < [self count]; i++)
    {
        [newArray addObject:block(self[i])];
    }
    
    return newArray;
}

- (BOOL)any:(BOOL (^)(id object))block
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

- (BOOL)all:(BOOL (^)(id object))block
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

- (NSArray*)select:(BOOL (^)(id object))block
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

- (NSArray*)reject:(BOOL (^)(id object))block
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

- (id)reduce:(id (^)(id object1, id object2))block withBase:(id)baseObject
{
    id total = baseObject;
    
    for(NSInteger i = 0; i < [self count]; i++)
    {
        total = block(total,self[i]);
    }
    
    return total;
}

@end
