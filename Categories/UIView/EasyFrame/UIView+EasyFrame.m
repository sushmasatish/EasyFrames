//
//  UIView+EasyFrame.m
//
//  Created by Sushma Satish on 28/05/2015.
//  Copyright (c) 2015 Appsify. All rights reserved.
//

#import "UIView+EasyFrame.h"

CG_EXTERN CGRect CGRectCrop(CGRect rect,
                            CGFloat left,
                            CGFloat top,
                            CGFloat right,
                            CGFloat bottom)
{
    rect.origin.x += left;
    rect.origin.y += top;
    rect.size.width -= left + right;
    rect.size.height -= top + bottom;
    
    return rect;
}

CG_EXTERN CGRect CGRectRescale(CGRect rect,
                               CGFloat width,
                               CGFloat height)
{
    rect.size.width += width;
    rect.size.height += height;
    
    return rect;
}

@implementation UIView (EasyFrame)

- (CGFloat)height
{
    return self.bounds.size.height;
}

- (CGFloat)width
{
    return self.bounds.size.width;
}

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setX:(CGFloat)positionX
{
    CGRect frame = self.frame;
    frame.origin.x = positionX;
    self.frame = frame;
}

- (void)setY:(CGFloat)positionY
{
    CGRect frame = self.frame;
    frame.origin.y = positionY;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(void)setRightX:(CGFloat)rightX
{
    self.width = rightX - self.x;
}

-(CGFloat)rightX
{
    return self.frame.origin.x + self.frame.size.width;
}

-(void)setBottomY:(CGFloat)bottomY
{
    self.height = bottomY - self.y;
}

-(CGFloat)bottomY
{
    return self.frame.origin.y + self.frame.size.height;
}

-(void)sizeToFitSubviews
{
    CGFloat width = 0.0f;
    CGFloat height = 0.0f;
    
    for (UIView *subView in self.subviews)
    {
        if (subView.rightX > width)
        {
            width = subView.rightX;
        }
        
        if (subView.bottomY > height)
        {
            height = subView.bottomY;
        }
    }
    
    self.width = width;
    self.height = height;
}

@end
