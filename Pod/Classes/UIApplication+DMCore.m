//
//  UIApplication+DMCore.m
//  DMCore
//
//  Created by Dale Myers on 15/07/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "UIApplication+DMCore.h"

@implementation UIApplication (DMCore)

- (NSString*)dm_Name
{
	return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
}

- (NSString*)dm_Version
{
	return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

- (NSString*)dm_ReleaseVersion
{
	return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

@end
