//
//  UIView+DMCore.h
//  DMCore
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DMCore)

/**
 *	@brief  Set the view frame X position
 *
 *	@param x The new x position of the view
 */
- (void)dm_SetFrameX:(CGFloat)x;

/**
 *	@brief  Set the view frame Y position
 *
 *	@param y The new y position of the view
 */
- (void)dm_SetFrameY:(CGFloat)y;

/**
 *	@brief  Set the view frame width
 *
 *	@param width The new width of the view
 */
- (void)dm_SetFrameWidth:(CGFloat)width;

/**
 *	@brief  Set the view frame height
 *
 *	@param height The new height of the view
 */
- (void)dm_SetFrameHeight:(CGFloat)height;

/**
 *	@brief  Set the view frame origin
 *
 *	@param origin The new origin of the view
 */
- (void)dm_SetFrameOrigin:(CGPoint)origin;

/**
 *	@brief  Set the view frame size
 *
 *	@param size The new size of the view
 */
- (void)dm_SetFrameSize:(CGSize)size;



@end
