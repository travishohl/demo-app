//
//  ViewController.h
//  Pong
//
//  Created by Travis Hohl on 7/30/14.
//  Copyright (c) 2014 Travis Hohl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountLabel.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) CountLabel *countLabel;

- (void)toggleBackgroundColor;

@end
