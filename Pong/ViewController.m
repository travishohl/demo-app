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

- (ViewController *)init
{
    if (self = [super init])
    {
        self.view.backgroundColor = [UIColor blueColor];
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
    // Toggle the background color
    if (self.view.backgroundColor == [UIColor blueColor])
    {
        self.view.backgroundColor = [UIColor redColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor blueColor];
    }
    
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
                                           otherButtonTitles:nil, nil];
        [av show];
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
