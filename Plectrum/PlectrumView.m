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


-(void) drawPlectrumWithPercentage:(CGFloat) percentage color:(UIColor *)color
{
    static CGFloat pi = 3.141592653589793;
    static CGFloat radius100percent = 50.0;
    
    static CGFloat area100percent;
    area100percent= radius100percent * radius100percent * pi *3/4 + radius100percent*radius100percent;
    
    CGFloat area = area100percent * percentage;

    CGFloat newRadius = sqrt(area / 3.36);
    
    percentage = newRadius/ 50.0;
    CGFloat factor = self.frame.size.width ;
    percentage*=factor;
    UIBezierPath* plectrum = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(0, factor - percentage, percentage,percentage)
                                                   byRoundingCorners: UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomRight
                                                         cornerRadii: CGSizeMake(percentage/2, percentage/2)];
    [color setFill];
    [plectrum fill];
}


- (void)drawRect:(CGRect)rect
{
    [self drawPlectrumWithPercentage:1.0 color: [UIColor colorWithWhite:.9 alpha:1]];
    //[self drawPlectrumWithPercentage:.75 color:[UIColor colorWithRed:245.0/255.0 green:134.0/255.0 blue:122.0/255.0 alpha:1]];
    //[self drawPlectrumWithPercentage:.65 color:[UIColor colorWithRed:171.0/255.0 green:212.0/255.0 blue:105.0/255.0 alpha:1]];
    [self drawPlectrumWithPercentage:.4 color:[UIColor colorWithRed:71.0/255.0 green:212.0/255.0 blue:105.0/255.0 alpha:1]];
    [self drawPlectrumWithPercentage:.1 color:[UIColor colorWithRed:71.0/255.0 green:22.0/255.0 blue:105.0/255.0 alpha:1]];


}

@end
