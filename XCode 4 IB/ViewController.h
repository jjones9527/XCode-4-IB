//
//  ViewController.h
//  XCode 4 IB
//
//  Created by Jeremy Jones on 11/17/2013.
//  Copyright (c) 2013 Jeremy Jones. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)buttonWasTapped:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *theLabel;

@end
