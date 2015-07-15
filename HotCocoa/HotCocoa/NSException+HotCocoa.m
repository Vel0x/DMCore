//
//  NSException+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSException+HotCocoa.h"

@implementation NSException (HotCocoa)

+ (void)dm_RaiseUnimplementedMethod
{
    NSArray *callStack = [NSThread callStackSymbols];
    NSString *method;
    NSRange dashPosition;
    NSRange closingBracketPosition;
    
    if([callStack count] < 2)
    {
        [NSException dm_RaiseUnimplementedMethodWithName:"Unknown Method"];
        return;
    }
    
    method = callStack[1];
    
    dashPosition = [method rangeOfString:@"-" options:NSBackwardsSearch];
    
    if(dashPosition.location == NSNotFound)
    {
        [NSException dm_RaiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringFromIndex:dashPosition.location + 1];
    
    closingBracketPosition = [method rangeOfString:@"]" options:NSBackwardsSearch];
    
    if(closingBracketPosition.location == NSNotFound)
    {
        [NSException dm_RaiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringToIndex:closingBracketPosition.location + 1];
    
    [NSException dm_RaiseUnimplementedMethodWithName:[method UTF8String]];
}

+ (void)dm_RaiseUnimplementedMethodWithName:(const char*)methodName
{
    [NSException raise:@"Unimplemented Method" format:@"The following method has not yet been implemented: %s",methodName];
}

@end
