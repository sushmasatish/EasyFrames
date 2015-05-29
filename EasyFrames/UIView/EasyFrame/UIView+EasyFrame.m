//
//  UIView+EasyFrame.m
//

#import "UIView+EasyFrame.h"

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

@end
