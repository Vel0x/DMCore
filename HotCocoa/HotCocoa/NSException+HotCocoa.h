//
//  NSException+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (HotCocoa)

+ (void)dm_RaiseUnimplementedMethod;

+ (void)dm_RaiseUnimplementedMethodWithName:(const char*)methodName;

@end
