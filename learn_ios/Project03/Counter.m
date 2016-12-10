//
//  Counter.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/10.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "Counter.h"

@interface Counter ()

@end

@implementation Counter

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 这是一个计数demo
    // 设置右按钮
    UIBarButtonItem *resetBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(resetCounter:)];
    self.navigationItem.rightBarButtonItem = resetBtn;
    // 设置背景色
    UIColor *backgroundColor = [[UIColor alloc] initWithRed:0.95 green:0.95 blue:0.95 alpha:1];
    self.view.backgroundColor = backgroundColor;
    // 页面布局
    // 数字
    number = [[UILabel alloc] init];
    [number setFrame:CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height - 500, self.view.frame.size.width - 50, 100)];
    number.text = [NSString stringWithFormat:@"%d", labelNumber];
    number.backgroundColor = backgroundColor;
    number.textAlignment = NSTextAlignmentCenter;
    number.font = [UIFont systemFontOfSize:100];
    [self.view addSubview:number];
    // 按钮
    UIButton *btn = [[UIButton alloc] init];
    UIColor *btncolor = [UIColor orangeColor];
     btn.backgroundColor = btncolor;
    // btn.titleLabel = @"点击";
    // 设置按钮位置
    [btn setFrame:CGRectMake(self.view.frame.size.width/2 - 50, self.view.frame.size.height-100, 100, 40)];
    // 设置事件
    [btn addTarget:self action:@selector(addNumber:) forControlEvents:1];
    [self.view addSubview:btn];
}

- (void)resetCounter:(id)sender {
    // 点击后重置页面计数
    // NSLog(@"click it");
    labelNumber = 0;
    number.text = [NSString stringWithFormat:@"%d", labelNumber];
}

- (void) addNumber:(id)sender {
    // NSLog(@"数字改变");
    labelNumber++;
    number.text = [NSString stringWithFormat:@"%d", labelNumber];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
