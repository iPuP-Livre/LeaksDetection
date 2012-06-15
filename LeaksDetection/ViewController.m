//
//  ViewController.m
//  LeaksDetection
//
//  Created by Marian PAUL on 29/03/12.
//  Copyright (c) 2012 IPuP SARL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 80, 30)];
    [self.view addSubview:label];
    
    NSNumber *number = [[NSNumber alloc] initWithFloat:45.67f];
    
    label.text = [NSString stringWithFormat:@"%f", [number floatValue]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
