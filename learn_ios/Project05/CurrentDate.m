//
//  CurrentDate.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/12.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "CurrentDate.h"

@interface CurrentDate ()

@end

@implementation CurrentDate

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    // 在页面上显示一个 Label 显示时间
    date = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 40)];
    // 获取当前时间
    // NSDate *now = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    NSDate *now = [NSDate date];
    // 创建一个时间格式化对象
    formatter = [[NSDateFormatter alloc] init];
    
    // 按照什么样的格式来格式化时间
    formatter.dateFormat = @"yyyy年MM月dd日 HH时mm分ss秒";
    
    date.text = [formatter stringFromDate:now];
    // date.text = @"helo";
    date.backgroundColor = [UIColor whiteColor];
    date.font = [UIFont systemFontOfSize:24];
    date.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:date];
    
    // 刷新按钮
    UIButton *refresh = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 40, 400, 80, 40)];
    [refresh setTitle:@"refresh" forState:UIControlStateNormal];
    // refresh.backgroundColor = [UIColor redColor];
    // refresh.titleLabel.textColor = [UIColor blueColor];
    [refresh setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    // 给按钮添加点击事件
    [refresh addTarget:self action:@selector(refresh:) forControlEvents:1];
    [self.view addSubview:refresh];
}

- (void)refresh:(id)sender {
    // NSLog(@"click");
    // 刷新时间
    NSDate *now = [NSDate date];
    date.text = [formatter stringFromDate:now];
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
