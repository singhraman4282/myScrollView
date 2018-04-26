//
//  testView.m
//  MyScrollView
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "testView.h"

@interface testView ()

@end

@implementation testView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *tempScrollView=(UIScrollView *)self.view;
    tempScrollView.contentSize=CGSizeMake(1280,960);
    
    
    CGRect fullScreenRect = self.view.bounds;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:fullScreenRect];
    scrollView.contentSize=CGSizeMake(320,758);
    scrollView.backgroundColor = [UIColor greenColor];
    
    
    self.view=scrollView;
    
    
    
    
    
    
}//load



@end
