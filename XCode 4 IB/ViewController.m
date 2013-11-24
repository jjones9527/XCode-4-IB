//
//  ViewController.m
//  XCode 4 IB
//
//  Created by Jeremy Jones on 11/17/2013.
//  Copyright (c) 2013 Jeremy Jones. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonWasTapped:(UIButton *)sender {
    if ([_theLabel.text isEqualToString:@"This is off"])
    _theLabel.text = @"This is on";
    else
    _theLabel.text = @"This is off";
}
@end
