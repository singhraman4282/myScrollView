//
//  ViewController.m
//  MyScrollView
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) CGFloat yOrigin;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(0, 0, self.view.bounds.size.width, 800);
    
    
    
    MyScrollView *scrollView = [[MyScrollView alloc] initWithFrame:frame];
    scrollView.backgroundColor = [UIColor purpleColor];
    CGSize contentSize = CGSizeMake([[UIScreen mainScreen]bounds].size.width, 800);
    scrollView.contentSize = contentSize;
    
    
    scrollView.translatesAutoresizingMaskIntoConstraints = false;
    
//    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(viewPanned:)];

//    [scrollView addGestureRecognizer:panGesture];
    [self.view addSubview:scrollView];
    
    
    
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowView];
    
}//load


-(void) viewPanned: (UIPanGestureRecognizer *)sender {
   

    
    CGPoint translationInView = [sender translationInView:sender.view];
    CGPoint oldCenter = sender.view.center;
    CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    sender.view.bounds = CGRectMake(0, sender.view.bounds.origin.y - translationInView.y, self.view.frame.size.width, self.view.frame.size.height);
    [sender setTranslation:CGPointZero inView:self.view];
    

    
}//viewPanned


@end
