//
//  UIView+Frame.h
//
//  Created by Sushma Satish on 28/05/2015.
//  Copyright (c) 2015 Appsify. All rights reserved.
//

#import <UIKit/UIKit.h>

CG_EXTERN CGRect CGRectCrop(CGRect rect,
                            CGFloat left,
                            CGFloat top,
                            CGFloat right,
                            CGFloat bottom);

CG_EXTERN CGRect CGRectRescale(CGRect rect,
                               CGFloat width,
                               CGFloat height);

@interface UIView (Frame)

@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat rightX;
@property (nonatomic, assign) CGFloat bottomY;

-(void) sizeToFitSubviews;

@end
