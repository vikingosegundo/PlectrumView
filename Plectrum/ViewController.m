//
//  ViewController.m
//  Plectrum
//
//  Created by Manuel Meyer on 12.10.12.
//  Copyright (c) 2012 bit.fritze. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        CGRect r = self.plectrumView.frame;
        self.plectrumView.frame = CGRectMake(r.origin.x, r.origin.y,
                                             r.size.width*2, r.size.height*2);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setPlectrumView:nil];
    [super viewDidUnload];
}
@end
