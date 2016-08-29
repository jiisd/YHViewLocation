//
//  UIView+YHLocation.h
//
//  Created by 郑亚恒 on 15/6/29.
//  Copyright (c) 2015年 郑亚恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YHLocation)

/******************************************************
 * Shortcut for frame
 */

/** Shortcut for frame.origin.x */
@property (nonatomic, assign) CGFloat frameX;
/** Shortcut for frame.origin.y */
@property (nonatomic, assign) CGFloat frameY;
/** Shortcut for frame.size.width */
@property (nonatomic, assign) CGFloat frameW;
/** Shortcut for frame.size.height */
@property (nonatomic, assign) CGFloat frameH;
/** Shortcut for frame.origin */
@property (nonatomic, assign) CGPoint origin;
/** Shortcut for rame.size */
@property (nonatomic, assign) CGSize size;

/******************************************************
 * Shortcut for bounds
 */

/** Shortcut for bounds.origin.x */
@property (nonatomic, assign) CGFloat boundsX;
/** Shortcut for bounds.origin.y */
@property (nonatomic, assign) CGFloat boundsY;
/** Shortcut for bounds.size.width */
@property (nonatomic, assign) CGFloat boundsW;
/** Shortcut for bounds.size.height */
@property (nonatomic, assign) CGFloat boundsH;

/******************************************************
 * Shortcut for center
 */

/** Shortcut for center.x */
@property (nonatomic, assign) CGFloat centerX;
/** Shortcut for center.y */
@property (nonatomic, assign) CGFloat centerY;

/******************************************************
 * Shortcut like CSS
 */

/** Shortcut for frame.origin.x */
@property (nonatomic, assign) CGFloat left;
/** Shortcut for frame.origin.y */
@property (nonatomic, assign) CGFloat top;
/** Shortcut for frame.origin.x + frame.size.width */
@property (nonatomic, assign) CGFloat right;
/** Shortcut for frame.origin.y + frame.size.height */
@property (nonatomic, assign) CGFloat bottom;
/** Shortcut for frame.size.width */
@property (nonatomic, assign) CGFloat width;
/** Shortcut for frame.size.width */
@property (nonatomic, assign) CGFloat height;

@end