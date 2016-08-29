//
//  UIView+YHLocation.m
//
//  Created by 郑亚恒 on 15/6/29.
//  Copyright (c) 2015年 郑亚恒. All rights reserved.
//

#import "UIView+YHLocation.h"

@implementation UIView (YHLocation)

//***********************  Frame  ***********************//
-(CGFloat)frameX{
    return self.frame.origin.x;
}
-(void)setFrameX:(CGFloat)frameX{
    CGRect frame = self.frame;
    frame.origin.x = frameX;
    self.frame = frame;
}

-(CGFloat)frameY{
    return self.frame.origin.y;
}
-(void)setFrameY:(CGFloat)frameY{
    CGRect frame = self.frame;
    frame.origin.y = frameY;
    self.frame = frame;
}

-(CGFloat)frameW{
    return self.frame.size.width;
}
-(void)setFrameW:(CGFloat)frameW{
    CGRect frame = self.frame;
    frame.size.width = frameW;
    self.frame = frame;
}

-(CGFloat)frameH{
    return self.frame.size.height;
}
-(void)setFrameH:(CGFloat)frameH{
    CGRect frame = self.frame;
    frame.size.height = frameH;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

//***********************  Bounds  ***********************//
-(CGFloat)boundsX{
    return self.bounds.origin.x;
}
-(void)setBoundsX:(CGFloat)boundsX{
    CGRect bounds = self.bounds;
    bounds.origin.x = boundsX;
    self.bounds = bounds;
}

-(CGFloat)boundsY{
    return self.bounds.origin.y;
}
-(void)setBoundsY:(CGFloat)boundsY{
    CGRect bounds = self.bounds;
    bounds.origin.y = boundsY;
    self.bounds = bounds;
}

-(CGFloat)boundsW{
    return self.bounds.size.width;
}
-(void)setBoundsW:(CGFloat)boundsW{
    CGRect bounds = self.bounds;
    bounds.size.width = boundsW;
    self.bounds = bounds;
}

-(CGFloat)boundsH{
    return self.bounds.size.height;
}
-(void)setBoundsH:(CGFloat)boundsH{
    CGRect bounds = self.bounds;
    bounds.size.height = boundsH;
    self.bounds = bounds;
}

//***********************  Center  ***********************//
-(CGFloat)centerX{
    return self.center.x;
}
-(void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

-(CGFloat)centerY{
    return self.center.y;
}
-(void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

//***********************  Left  ***********************//
- (CGFloat)left {
    return self.frameX;
}
- (void)setLeft:(CGFloat)x {
    self.frameX = x;
}

//***********************  Top  ***********************//
- (CGFloat)top {
    return self.frameY;
}
- (void)setTop:(CGFloat)y {
    self.frameY = y;
}

//***********************  Right  ***********************//
- (CGFloat)right {
    return self.frameX + self.frameW;
}
- (void)setRight:(CGFloat)right {
    self.frameX = right - self.frameW;
}

//***********************  Bottom  ***********************//
- (CGFloat)bottom {
    return self.frameY + self.frameH;
}
- (void)setBottom:(CGFloat)bottom {
    self.frameY = bottom - self.frameH;
}

//***********************  Width  ***********************//
- (CGFloat)width {
    return self.frameW;
}
- (void)setWidth:(CGFloat)width {
    self.frameW = width;
}

//***********************  Height  ***********************//
- (CGFloat)height {
    return self.frameH;
}
- (void)setHeight:(CGFloat)height {
    self.frameH = height;
}

@end