//
//  PassData.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/14.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "PassData.h"
#import "SecondViewController.h"
#import "SecondViewController.h"

@interface PassData ()

@property (nonatomic, retain) UITextField *textField;

@end

@implementation PassData

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    // 给导航栏添加按钮
    // 添加导航的按钮
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(passData:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    // 输入框
    [self.view addSubview:self.textField];
}

// 重写textField 方法
- (UITextField *)textField {
    if(!_textField) {
        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width, 40)];
        _textField.borderStyle = UITextBorderStyleRoundedRect;
    }
    return _textField;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)passData:(id)render {
    SecondViewController *nextPage = [[SecondViewController alloc] init];
    // 这里可以给属性赋值
    nextPage.data = self.textField.text;
    [self.navigationController pushViewController:nextPage animated:YES];
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
