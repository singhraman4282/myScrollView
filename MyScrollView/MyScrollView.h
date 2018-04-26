//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Raman Singh on 2018-04-23.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView
@property (nonatomic) CGSize contentSize;
@property (nonatomic) UIPanGestureRecognizer *panGestureRecognizer;
@end
