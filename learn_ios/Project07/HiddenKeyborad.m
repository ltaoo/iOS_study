//
//  HiddenKeyborad.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/15.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "HiddenKeyborad.h"

@interface HiddenKeyborad ()<UITextFieldDelegate>

@end

@implementation HiddenKeyborad

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    // 显示文本输入框
    text = [[UITextField alloc] initWithFrame:CGRectMake(0, 74, self.view.frame.size.width, 100)];
    text.backgroundColor = [UIColor whiteColor];
    text.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:text];
    //
    text.delegate  = self;
    // 手势
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeGesture:)];
    //设置轻扫的方向
    swipeGesture.direction = UISwipeGestureRecognizerDirectionRight; //向右
    [self.view addGestureRecognizer:swipeGesture];
    UISwipeGestureRecognizer *swipeGestureLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeGesture:)];
    //设置轻扫的方向
    swipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft; //向左
    [self.view addGestureRecognizer:swipeGestureLeft];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// 当点击返回键时，隐藏键盘
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
//点击屏幕空白处去掉键盘
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    [text resignFirstResponder];
//}
//轻扫手势触发方法
-(void)swipeGesture:(id)sender
{
    UISwipeGestureRecognizer *swipe = sender;
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        //向左轻扫
        NSLog(@"向左");
        [text resignFirstResponder];
    }
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight)
    {
        //向右轻扫
        NSLog(@"向右");
    }
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
