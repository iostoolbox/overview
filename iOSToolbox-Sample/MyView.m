//
//  MyView.m
//  iOSToolbox-Sample
//
//  Created by iOS Toolbox on 17/03/14.
//  Copyright (c) 2014 iOS Toolbox. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIColor *fillColor = [UIColor colorWithRed:1 green:0.149 blue:0.322 alpha:1];
    [fillColor setFill];
    
    UIBezierPath *logoPath = [UIBezierPath bezierPath];
    
    // Set the starting point of the logo Shape Path.
    [logoPath moveToPoint:CGPointMake(136.737,110.560)];
    
    // Draw logo Shape Path.
    [logoPath addCurveToPoint:CGPointMake(150.588,110.106) controlPoint1:CGPointMake(140.608,111.857) controlPoint2:CGPointMake(146.809,111.654)];
    [logoPath addLineToPoint:CGPointMake(250.944,69.002)];
    [logoPath addLineToPoint:CGPointMake(220.840,61.454)];
    [logoPath addCurveToPoint:CGPointMake(206.416,61.073) controlPoint1:CGPointMake(216.881,60.462) controlPoint2:CGPointMake(210.422,60.291)];
    [logoPath addLineToPoint:CGPointMake(69.069,87.885)];
    [logoPath addLineToPoint:CGPointMake(136.737,110.560)];
    
    // Set the starting point of the logo Shape Path.
    [logoPath moveToPoint:CGPointMake(250.944,129.378)];
    
    // Draw logo Shape Path.
    [logoPath addLineToPoint:CGPointMake(250.944,68.896)];
    [logoPath addLineToPoint:CGPointMake(155.644,118.880)];
    [logoPath addCurveToPoint:CGPointMake(148.445,129.691) controlPoint1:CGPointMake(152.028,120.777) controlPoint2:CGPointMake(148.804,125.617)];
    [logoPath addLineToPoint:CGPointMake(141.338,210.304)];
    [logoPath addLineToPoint:CGPointMake(250.944,129.378)];
    
    // Set the starting point of the logo Shape Path.
    [logoPath moveToPoint:CGPointMake(69.069,148.261)];
    
    // Draw logo Shape Path.
    [logoPath addLineToPoint:CGPointMake(69.069,87.778)];
    [logoPath addLineToPoint:CGPointMake(130.823,118.555)];
    [logoPath addCurveToPoint:CGPointMake(137.767,129.251) controlPoint1:CGPointMake(134.478,120.377) controlPoint2:CGPointMake(137.587,125.166)];
    [logoPath addLineToPoint:CGPointMake(141.338,210.304)];
    [logoPath addLineToPoint:CGPointMake(69.069,148.261)];
    
    [logoPath closePath];
    [logoPath fill];
}

@end
