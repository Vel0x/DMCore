//
//  NSException+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSException+HotCocoa.h"

@implementation NSException (HotCocoa)

+ (void)raiseUnimplementedMethod
{
    NSArray *callStack = [NSThread callStackSymbols];
    NSString *method;
    NSRange dashPosition;
    NSRange closingBracketPosition;
    
    if([callStack count] < 2)
    {
        [NSException raiseUnimplementedMethodWithName:"Unknown Method"];
        return;
    }
    
    method = callStack[1];
    
    dashPosition = [method rangeOfString:@"-" options:NSBackwardsSearch];
    
    if(dashPosition.location == NSNotFound)
    {
        [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringFromIndex:dashPosition.location + 1];
    
    closingBracketPosition = [method rangeOfString:@"]" options:NSBackwardsSearch];
    
    if(closingBracketPosition.location == NSNotFound)
    {
        [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringToIndex:closingBracketPosition.location + 1];
    
    [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
}

+ (void)raiseUnimplementedMethodWithName:(const char*)methodName
{
    [NSException raise:@"Unimplemented Method" format:@"The following method has not yet been implemented: %s",methodName];
}

@end
