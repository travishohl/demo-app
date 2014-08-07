//
//  CountLabel.m
//  Pong
//
//  Created by Travis Hohl on 8/5/14.
//  Copyright (c) 2014 Travis Hohl. All rights reserved.
//

#import "CountLabel.h"

@implementation CountLabel

- (id)initWithFrame:(CGRect)frame value:(NSNumber *)value
{
    self = [super initWithFrame:frame];
    if (self) {
        [self updateCount:value];
        self.textAlignment = NSTextAlignmentCenter;
        self.textColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:1.0f];
        self.shadowColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
        CGSize shadowSize = { 2.5f, 2.5f };
        self.shadowOffset = shadowSize;
        [self setFont:[UIFont fontWithName:@"Helvetica"
                                      size:(CGFloat)96]];
    }
    return self;
}

- (void)updateCount:(NSNumber *)value
{
    self.text = [value stringValue];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
