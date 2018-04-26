//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned: )];
        [self addGestureRecognizer:self.panGestureRecognizer];
    }
    return self;
}

-(void)viewPanned:(UIPanGestureRecognizer *)sender {
    
    CGPoint translationInView = [sender translationInView:sender.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.bounds = CGRectMake(0, sender.view.bounds.origin.y - translationInView.y, sender.view.frame.size.width, sender.view.frame.size.height);
    [sender setTranslation:CGPointZero inView:sender.view];
    
    NSLog(@"%f", (sender.view.bounds.origin.y - translationInView.y));
    
    if ((sender.view.bounds.origin.y - translationInView.y)>200.00) {
    sender.view.bounds = CGRectMake(0, 200.0, sender.view.frame.size.width, sender.view.frame.size.height);
    }
    
    if ((sender.view.bounds.origin.y - translationInView.y)<0.00) {
        sender.view.bounds = CGRectMake(0, 0, sender.view.frame.size.width, sender.view.frame.size.height);
    }
    
    
}//viewPanned



@end
