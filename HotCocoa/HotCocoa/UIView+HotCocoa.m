//
//  UIView+HotCocoa.m
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "UIView+HotCocoa.h"

@implementation UIView (HotCocoa)

- (void)setFrameX:(CGFloat)x
{
    CGRect frame = [self frame];
    frame.origin.x = x;
    [self setFrame:frame];
}

- (void)setFrameY:(CGFloat)y
{
    CGRect frame = [self frame];
    frame.origin.y = y;
    [self setFrame:frame];
}

- (void)setFrameWidth:(CGFloat)width
{
    CGRect frame = [self frame];
    frame.size.width = width;
    [self setFrame:frame];
}

- (void)setFrameHeight:(CGFloat)height
{
    CGRect frame = [self frame];
    frame.size.height = height;
    [self setFrame:frame];
}

- (void)setFrameOrigin:(CGPoint)origin
{
    CGRect frame = [self frame];
    frame.origin = origin;
    [self setFrame:frame];
}

- (void)setFrameSize:(CGSize)size
{
    CGRect frame = [self frame];
    frame.size = size;
    [self setFrame:frame];
}



@end
