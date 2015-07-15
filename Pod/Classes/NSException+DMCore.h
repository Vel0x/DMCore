//
//  NSException+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSException (DMCore)

+ (void)dm_RaiseUnimplementedMethod;

+ (void)dm_RaiseUnimplementedMethodWithName:(const char*)methodName;

@end
