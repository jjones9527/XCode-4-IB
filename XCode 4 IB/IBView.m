//
//  IBView.m
//  XCode 4 IB
//
//  Created by Jeremy Jones on 11/24/2013.
//  Copyright (c) 2013 Jeremy Jones. All rights reserved.
//

#import "IBView.h"

@implementation IBView

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
    CGPoint startFill, endFill;
    
    CGContextRef aContext = UIGraphicsGetCurrentContext();
    CGContextClearRect(aContext, rect);
    CGContextSetShouldAntialias(aContext, YES);
    
    CGColorSpaceRef myRGB = CGColorSpaceCreateDeviceRGB();
    size_t num_locations = 3;
    CGFloat locations [3] = {0.0, 0.5, 1.0};
    CGFloat components [12] = {1.0, 0.0, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, 0.0, 1.0, 1.0};
    CGGradientRef myGradient = CGGradientCreateWithColorComponents(myRGB, components, locations, num_locations);
    CGContextSaveGState(aContext);
    CGContextAddRect(aContext, CGRectMake(0, 0, 320, 460));
    CGContextClip(aContext);
    startFill = CGPointMake(0, 0);
    endFill = CGPointMake(320, 460);
    CGContextDrawLinearGradient(aContext, myGradient, startFill, endFill, kCGGradientDrawsBeforeStartLocation+kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(aContext);
    CGGradientRelease(myGradient);
    CGColorSpaceRelease(myRGB);
    
}


@end
