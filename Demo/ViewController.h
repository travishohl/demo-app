//
//  ViewController.h
//  Pong
//
//  Created by Travis Hohl on 7/30/14.
//  Copyright (c) 2014 Travis Hohl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CountLabel.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) CountLabel *countLabel;
@property (nonatomic, strong) UIColor *blueColor;
@property (nonatomic, strong) UIColor *redColor;

- (void)toggleBackgroundColor;
- (void)resetCounter;

@end
