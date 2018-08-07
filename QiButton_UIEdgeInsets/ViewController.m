//
//  ViewController.m
//  QiButton_UIEdgeInsets
//
//  Created by QiShare on 2018/8/7.
//  Copyright © 2018年 QiShare. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self demo1];
    [self demo2];
    [self demo3];
    [self demo4];
}

#pragma mark - 默认Button(作对比用)

- (void)demo1 {
    
    UIButton *button = [self createButtonWithFrame:CGRectMake(50.0, 250.0, 120.0, 120.0)];
    
    [self.view addSubview:button];
}


#pragma mark - 设置imageView与label的距离

- (void)demo2 {
    
    UIButton *button = [self createButtonWithFrame:CGRectMake(200.0, 250.0, 120.0, 120.0)];
    
    button.titleEdgeInsets = UIEdgeInsetsMake(.0, 10.0, .0, .0);
    
    [self.view addSubview:button];
}


#pragma mark - 设置图片在右，文字在左

- (void)demo3 {
    
    UIButton *button = [self createButtonWithFrame:CGRectMake(50.0, 400.0, 120.0, 120.0)];
    
    button.titleEdgeInsets = UIEdgeInsetsMake(.0, - button.imageView.bounds.size.width - 10.0, .0, button.imageView.bounds.size.width);
    button.imageEdgeInsets = UIEdgeInsetsMake(.0, button.titleLabel.bounds.size.width, .0, - button.titleLabel.bounds.size.width);
    
    [self.view addSubview:button];
}


#pragma mark - 设置图片在上，文字在下

- (void)demo4 {
    
    UIButton *button = [self createButtonWithFrame:CGRectMake(200, 400, 120.0, 120.0)];
    
    button.titleEdgeInsets = UIEdgeInsetsMake(button.imageView.frame.size.height + 10.0, - button.imageView.bounds.size.width, .0, .0);
    button.imageEdgeInsets = UIEdgeInsetsMake(.0, button.titleLabel.bounds.size.width / 2, button.titleLabel.frame.size.height + 10.0, - button.titleLabel.bounds.size.width / 2);
    
    [self.view addSubview:button];
}


#pragma mark - button初始化方法

- (UIButton *)createButtonWithFrame:(CGRect)frame {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.backgroundColor = [UIColor whiteColor];
    button.titleLabel.font = [UIFont systemFontOfSize:14.0];
    button.titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    button.imageView.layer.cornerRadius = 22.0;
    button.imageView.layer.masksToBounds = YES;
    button.layer.borderColor = [UIColor blackColor].CGColor;
    button.layer.cornerRadius = frame.size.width / 2;
    button.layer.borderWidth = 1.0;
    button.layer.masksToBounds = YES;
    [button setTitle:@"QiShare" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"logo"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    return button;
}

@end
