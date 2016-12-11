//
//  TipCalculator.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/11.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "TipCalculator.h"

@interface TipCalculator ()

@end

@implementation TipCalculator

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 设置背景色
    self.view.backgroundColor = [UIColor whiteColor];
    // 输入框
    money = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width - 20, 80)];
    // 设置背景色
    money.backgroundColor = [UIColor whiteColor];
    // 设置边框
    // [money setBorderStyle:UITextBorderStyleLine];
    // 默认聚焦
    [money becomeFirstResponder];
    // 字体
    money.font = [UIFont systemFontOfSize:80];
    money.textAlignment = NSTextAlignmentRight;
    // placeholder
    money.placeholder = @"$00.00";
    // 添加监听事件，计算
    [money addTarget:self action:@selector(calculationTip:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:money];
    // 总共支付
    totalView = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width - 20, 80)];
    totalView.backgroundColor = [UIColor whiteColor];
    totalView.textAlignment = NSTextAlignmentRight;
    // NSString *totalNum = [[NSString alloc] initWithFormat:@"%d", total];
    NSString *totalNum = @"0";
    totalView.text = totalNum;
    totalView.font = [UIFont systemFontOfSize:40];
    [self.view addSubview:totalView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// 获取到输入的内容
- (void)calculationTip:(UITextField *)theTextField {
    //
    NSLog(@"input %f", [theTextField.text floatValue]);
    if(![self isPureInt:theTextField.text] || ![self isPureFloat:theTextField.text]) {
        // 如果不是数字
        NSLog(@"输入的不是数字");
        return;
    }
    // 计算 total * 10%
    total = [theTextField.text floatValue] * 0.1 + [theTextField.text floatValue];
    NSString *totalNum = [[NSString alloc] initWithFormat:@"%f", floorf(total)];
    totalView.text = totalNum;
}
//判断是否为整形：

- (BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}

//判断是否为浮点形：

- (BOOL)isPureFloat:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
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
