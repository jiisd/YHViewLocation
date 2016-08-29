//
//  ViewController.m
//  Demo
//
//  Created by 郑亚恒 on 15/8/25.
//  Copyright © 2015年 郑亚恒. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YHLocation.h"

NSInteger const kUpBtnTag        = 1001;
NSInteger const kLeftBtnTag      = 1002;
NSInteger const kRightBtnTag     = 1003;
NSInteger const kDownBtnTag      = 1004;

NSInteger const btnCenterMargin  = 70;

@interface ViewController ()

@property (nonatomic, strong) UIButton *upBtn;
@property (nonatomic, strong) UIButton *leftBtn;
@property (nonatomic, strong) UIButton *rightBtn;
@property (nonatomic, strong) UIButton *downBtn;

@property (nonatomic, strong) UIView *redView;

@end

@implementation ViewController

#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // add subViews
    [self setupUI];
}

#pragma mark - privateMethods
- (void)setupUI {
    [self.view addSubview:self.upBtn];
    [self.view addSubview:self.leftBtn];
    [self.view addSubview:self.rightBtn];
    [self.view addSubview:self.downBtn];
    
    [self.view addSubview:self.redView];
}

- (UIButton *)getBtnWithTag:(NSInteger)tag title:(NSString *)title {
    UIButton *btn = [[UIButton alloc]init];
    btn.tag = tag;
    btn.size = CGSizeMake(50, 40);
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:nil action:@selector(moveBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}

#pragma mark - actionMethods
- (void)moveBtnAction:(UIButton *)btn {
    CGPoint moveToPoint;
    
//    // some action
//    NSInteger btnTag = btn.tag;
//    switch (btnTag) {
//        case kUpBtnTag:
//            
//            break;
//            
//        case kLeftBtnTag:
//            
//            break;
//            
//        case kRightBtnTag:
//            
//            break;
//            
//        case kDownBtnTag:
//            
//            break;
//    }
    
    moveToPoint = btn.center;
    
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.4 initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        self.redView.center = moveToPoint;
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.2 animations:^{
            self.redView.center = self.view.center;
        } completion:nil];
        
    }];
    
}

#pragma mark - getter
- (UIButton *)upBtn {
    if (!_upBtn) {
        _upBtn = [self getBtnWithTag:kUpBtnTag title:@"up"];
        _upBtn.centerX = self.view.centerX;
        _upBtn.bottom = self.view.centerY - btnCenterMargin;
    }
    return _upBtn;
}

- (UIButton *)leftBtn {
    if (!_leftBtn) {
        _leftBtn = [self getBtnWithTag:kLeftBtnTag title:@"left"];
        _leftBtn.centerY = self.view.centerY;
        _leftBtn.right = self.view.centerX - btnCenterMargin;
    }
    return _leftBtn;
}

- (UIButton *)rightBtn {
    if (!_rightBtn) {
        _rightBtn = [self getBtnWithTag:kRightBtnTag title:@"right"];
        _rightBtn.centerY = self.view.centerY;
        _rightBtn.left = self.view.centerX + btnCenterMargin;
    }
    return _rightBtn;
}

- (UIButton *)downBtn {
    if (!_downBtn) {
        _downBtn = [self getBtnWithTag:kDownBtnTag title:@"down"];
        _downBtn.centerX = self.view.centerX;
        _downBtn.top = self.view.centerY + btnCenterMargin;
    }
    return _downBtn;
}

-(UIView *)redView {
    if (!_redView) {
        _redView = [[UIView alloc]init];
        _redView.frameW = 50;
        _redView.frameH = 50;
        _redView.center = self.view.center;
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

@end