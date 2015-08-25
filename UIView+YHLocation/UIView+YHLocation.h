//
//  UIView+YHLocation.h
//
//  Created by 郑亚恒 on 15/6/29.
//  Copyright (c) 2015年 郑亚恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YHLocation)

@property (assign,nonatomic) CGFloat frameX;
@property (assign,nonatomic) CGFloat frameY;
@property (assign,nonatomic) CGFloat frameW;
@property (assign,nonatomic) CGFloat frameH;

@property (assign,nonatomic) CGFloat boundsX;
@property (assign,nonatomic) CGFloat boundsY;
@property (assign,nonatomic) CGFloat boundsW;
@property (assign,nonatomic) CGFloat boundsH;

@property (assign,nonatomic) CGFloat centerX;
@property (assign,nonatomic) CGFloat centerY;

@end
