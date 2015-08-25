//
//  ViewController.m
//  Demo
//
//  Created by 郑亚恒 on 15/8/25.
//  Copyright © 2015年 郑亚恒. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YHLocation.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *downBtn;
@property (nonatomic, strong) UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    [self.view addSubview:self.downBtn];
    [self.view addSubview:self.redView];
}

- (void)down {
    
    self.redView.frameY += 50;
    
    if (CGRectGetMaxY(self.redView.frame) >= [UIScreen mainScreen].bounds.size.height) {
        self.redView.frameY = [UIScreen mainScreen].bounds.size.height - self.redView.boundsH;
        NSLog(@"已经到底了哦。。。");
    }
    
}

#pragma mark - 懒加载

- (UIButton *)downBtn {
    if (!_downBtn) {
        _downBtn = [[UIButton alloc]init];
        _downBtn.frameY = 60;
        _downBtn.boundsW = 100;
        _downBtn.boundsH = 40;
        _downBtn.centerX = self.view.centerX;
        [_downBtn setTitle:@"向下" forState:UIControlStateNormal];
        [_downBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [_downBtn setBackgroundColor:[UIColor lightGrayColor]];
        [_downBtn addTarget:self action:@selector(down) forControlEvents:UIControlEventTouchUpInside];
    }
    return _downBtn;
}

-(UIView *)redView {
    if (!_redView) {
        _redView = [[UIView alloc]init];
        _redView.frameY = 100;
        _redView.frameW = 100;
        _redView.frameH = 100;
        _redView.centerX = self.downBtn.centerX;
        _redView.backgroundColor = [UIColor redColor];
    }
    return _redView;
}

@end
