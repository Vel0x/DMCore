//
//  NSException+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (HotCocoa)

+ (void)raiseUnimplementedMethod;

+ (void)raiseUnimplementedMethodWithName:(const char*)methodName;

@end
