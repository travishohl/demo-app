//
//  CountLabel.h
//  Pong
//
//  Created by Travis Hohl on 8/5/14.
//  Copyright (c) 2014 Travis Hohl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountLabel : UILabel

- (id)initWithFrame:(CGRect)frame value:(NSNumber *)value;
- (void)updateCount:(NSNumber *)value;

@end
