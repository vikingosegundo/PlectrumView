//
//  PlectrumView.m
//  Plectrum
//
//  Created by Manuel Meyer on 12.10.12.
//  Copyright (c) 2012 bit.fritze. All rights reserved.
//

#import "PlectrumView.h"

@implementation PlectrumView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}


-(void) drawPlectrumOfPerentage:(CGFloat) percentage color:(UIColor *)color
{
    
    CGFloat factor = self.frame.size.width ;
    CGFloat widthOfCircle = percentage;
    CGFloat widthOfRectangle = percentage /2;
    
    CGRect rectangleFrame = {0, factor - widthOfRectangle*factor, widthOfRectangle*factor, widthOfRectangle*factor };
    CGRect circleFrame = {0, factor - widthOfCircle*factor, percentage*factor, percentage*factor};
    
    [color setFill];
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleFrame];
    [rectanglePath fill];
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: circleFrame];
    [ovalPath fill];
    
    
}


- (void)drawRect:(CGRect)rect
{
    [self drawPlectrumOfPerentage:1.0 color: [UIColor colorWithWhite:.9 alpha:1]];
    [self drawPlectrumOfPerentage:.75 color:[UIColor colorWithRed:245.0/255.0 green:134.0/255.0 blue:122.0/255.0 alpha:1]];
    [self drawPlectrumOfPerentage:.61 color:[UIColor colorWithRed:171.0/255.0 green:212.0/255.0 blue:105.0/255.0 alpha:1]];
}

@end
