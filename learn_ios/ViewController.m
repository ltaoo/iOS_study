//
//  ViewController.m
//  learn_ios
//
//  Created by ltaoo on 2016/11/9.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *gray = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1];
    self.view.backgroundColor = gray;
    // 添加导航的按钮，为什么要在这里加？
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(selectLeftAction:)];
    self.navigationItem.leftBarButtonItem = leftButton;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(selectRightAction:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}

- (void)selectLeftAction:(id)sender {
    // 不建议使用
    // UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"点击了左按钮" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"点击了左按钮" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
        // 点击按钮的响应事件
    }]];
    // 弹出提示框
    [self presentViewController:alert animated:true completion:nil];
}

- (void)selectRightAction:(id)sender {
    //UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"点击了右按钮" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    //[alter show];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"点击了右按钮" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
        // 点击按钮的响应事件
    }]];
    // 弹出提示框
    [self presentViewController:alert animated:true completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
