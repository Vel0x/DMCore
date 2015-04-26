//
//  UIView+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HotCocoa)

/**
 *	@brief  Set the view frame X position
 *
 *	@param x The new x position of the view
 */
- (void)setFrameX:(CGFloat)x;

/**
 *	@brief  Set the view frame Y position
 *
 *	@param y The new y position of the view
 */
- (void)setFrameY:(CGFloat)y;

/**
 *	@brief  Set the view frame width
 *
 *	@param width The new width of the view
 */
- (void)setFrameWidth:(CGFloat)width;

/**
 *	@brief  Set the view frame height
 *
 *	@param height The new height of the view
 */
- (void)setFrameHeight:(CGFloat)height;

/**
 *	@brief  Set the view frame origin
 *
 *	@param origin The new origin of the view
 */
- (void)setFrameOrigin:(CGPoint)origin;

/**
 *	@brief  Set the view frame size
 *
 *	@param size The new size of the view
 */
- (void)setFrameSize:(CGSize)size;



@end
