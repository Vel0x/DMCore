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
    
    if([callStack count] < 2)
    {
        [NSException raiseUnimplementedMethodWithName:"Unknown Method"];
        return;
    }
    
    NSString *method = callStack[1];
    
    NSRange dashPositionRange = [method rangeOfString:@"-" options:NSBackwardsSearch];
    long dashPosition = dashPositionRange.location;
    
    if(dashPosition == NSNotFound)
    {
        [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringFromIndex:dashPosition + 1];
    
    NSRange closingBracketRange = [method rangeOfString:@"]" options:NSBackwardsSearch];
    long closingBracketPosition = closingBracketRange.location;
    
    if(closingBracketPosition == NSNotFound)
    {
        [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
        return;
    }
    
    method = [method substringToIndex:closingBracketPosition + 1];
    
    [NSException raiseUnimplementedMethodWithName:[method UTF8String]];
}

+ (void)raiseUnimplementedMethodWithName:(const char*)methodName
{
    [NSException raise:@"Unimplemented Method" format:@"The following method has not yet been implemented: %s",methodName];
}

@end
