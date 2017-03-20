//
//  ViewController.m
//  testPanGesture
//
//  Created by hh on 2017/2/8.
//  Copyright © 2017年 htj. All rights reserved.
//

#import "ViewController.h"
#import "UIView+XMLPanGesture.h"

@interface ViewController ()<XMLPanGestureDelegate>
@property(nonatomic, strong) UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(0, [UIScreen mainScreen].bounds.size.height - 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height+100)];
    tempView.backgroundColor = [UIColor redColor];
    self.testView = tempView;
    [self.view addSubview:tempView];
    
    [self.testView addPanGestureWithEndFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), self.testView.frame.size.height)];
    self.testView.panGestureDelegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - XMLPanGestureDelegate

- (void)xmlPanGesture:(UIPanGestureRecognizer *)panGesture didChangeWithView:(UIView *)targetView {
    if (panGesture.state == UIGestureRecognizerStateBegan) {
        self.testView.backgroundColor = [UIColor orangeColor];
    }
}

- (void)xmlPanGesture:(UIPanGestureRecognizer *)panGesture willShowTargetView:(UIView *)targetView {
    self.testView.backgroundColor = [UIColor orangeColor];
    
}

- (void)xmlPanGesture:(UIPanGestureRecognizer *)panGesture didShowTargetView:(UIView *)targetView {
    
}

- (void)xmlPanGesture:(UIPanGestureRecognizer *)panGesture willHideTargetView:(UIView *)targetView {
    
}

- (void)xmlPanGesture:(UIPanGestureRecognizer *)panGesture didHideTargetView:(UIView *)targetView {
//    self.testView.backgroundColor = [UIColor redColor];
}

@end
