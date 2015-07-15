//
//  UIView+DMCore.m
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "UIView+DMCore.h"

@implementation UIView (DMCore)

- (void)dm_SetFrameX:(CGFloat)x
{
    CGRect frame = [self frame];
    frame.origin.x = x;
    [self setFrame:frame];
}

- (void)dm_SetFrameY:(CGFloat)y
{
    CGRect frame = [self frame];
    frame.origin.y = y;
    [self setFrame:frame];
}

- (void)dm_SetFrameWidth:(CGFloat)width
{
    CGRect frame = [self frame];
    frame.size.width = width;
    [self setFrame:frame];
}

- (void)dm_SetFrameHeight:(CGFloat)height
{
    CGRect frame = [self frame];
    frame.size.height = height;
    [self setFrame:frame];
}

- (void)dm_SetFrameOrigin:(CGPoint)origin
{
    CGRect frame = [self frame];
    frame.origin = origin;
    [self setFrame:frame];
}

- (void)dm_SetFrameSize:(CGSize)size
{
    CGRect frame = [self frame];
    frame.size = size;
    [self setFrame:frame];
}

@end
