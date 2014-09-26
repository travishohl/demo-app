//
//  ViewController.m
//  Pong
//
//  Created by Travis Hohl on 7/30/14.
//  Copyright (c) 2014 Travis Hohl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize count=_count;
@synthesize countLabel=_countLabel;
@synthesize blueColor=_blueColor;
@synthesize redColor=_redColor;

- (ViewController *)init
{
    if (self = [super init])
    {
        // Create colors
        self.blueColor = [UIColor colorWithRed:9.0/255.0
                                         green:113.0/255.0
                                          blue:178.0/255.0
                                         alpha:1.0f];
        self.redColor = [UIColor colorWithRed:178.0/255.0
                                        green:18.0/255.0
                                         blue:18.0/255.0
                                        alpha:1.0f];
        
        // Set background color and initialize counter
        self.view.backgroundColor = self.blueColor;
        self.count = @0;
        
        // Create countLabel and add it as subview
        self.countLabel = [[CountLabel alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                      value:self.count];
        [self.view addSubview:self.countLabel];
        return self;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self toggleBackgroundColor];
}

- (void)toggleBackgroundColor
{
    @autoreleasepool {
        
        // Define animation block
        void (^anim) (void) = ^{
            // Toggle the background color
            if ([self.view.backgroundColor isEqual:self.blueColor])
            {
                self.view.backgroundColor = self.redColor;
            }
            else
            {
                self.view.backgroundColor = self.blueColor;
            }
        };
        [UIView animateWithDuration:0.3 animations:anim];

        
        // Remember how many times we've toggled
        int incrementedCountAsPrimitive = [self.count intValue] + 1;
        NSNumber *result = [NSNumber numberWithInt:incrementedCountAsPrimitive];
        self.count = result;
        [self.countLabel updateCount:self.count];
        
        // Display alert view, somtimes
        if (incrementedCountAsPrimitive % 10 == 0)
        {
            NSString *alertMessage = [NSString stringWithFormat:@"You've tapped %@ times!", self.count];
            UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Congratulations!"
                                                         message:alertMessage
                                                        delegate:self
                                               cancelButtonTitle:@"Great..."
                                               otherButtonTitles:@"Reset", nil];
            [av show];
        }
    }
}

- (void)alertView:(UIAlertView *) alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        [self resetCounter];
    }
}

- (void)resetCounter
{
    if (![self.count isEqual: @0])
    {
        self.count = @0;
        [self.countLabel updateCount:self.count];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
