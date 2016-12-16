//
//  GetPhoto.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/16.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "GetPhoto.h"

@interface GetPhoto ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation GetPhoto

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加一个获取照片按钮
    UIBarButtonItem *photo = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(camera:)];
    self.navigationItem.rightBarButtonItem = photo;
    
    imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 300)];
    [self.view addSubview:imageView];
}

// 获取相册照片方法
- (void)camera:(id)sender {
    // NSLog(@"获取照片");
    // 1.判断相册是否可以打开
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) return;
    // 2. 创建图片选择控制器
    picker = [[UIImagePickerController alloc] init];
    /**
     typedef NS_ENUM(NSInteger, UIImagePickerControllerSourceType) {
     UIImagePickerControllerSourceTypePhotoLibrary, // 相册
     UIImagePickerControllerSourceTypeCamera, // 用相机拍摄获取
     UIImagePickerControllerSourceTypeSavedPhotosAlbum // 相簿
     }
     */
    // 3. 设置打开照片相册类型(显示所有相簿)
    // UIImagePickerControllerSourceType sourcheType = UIImagePickerControllerSourceTypeCamera;
    // picker.sourceType = sourcheType;
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    // 照相机
    // ipc.sourceType = UIImagePickerControllerSourceTypeCamera;
    // 4.设置代理
    picker.delegate = self;
    picker.allowsEditing = YES;
    // 5.modal出这个控制器
    [self presentViewController:picker animated:YES completion:nil];
}

#pragma mark -- <UIImagePickerControllerDelegate>--
// 获取图片后的操作
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *, id> *)info {
    NSLog(@"User chosed imageView media with info '%@'.", info);
    
    // 设置图片
    // self.imageView.image = info[UIImagePickerControllerOriginalImage];
    UIImage *originalImage = info[UIImagePickerControllerOriginalImage];
    // _headPortraitImageView.image = originalImage;
    imageView.image = originalImage;
    
    // 销毁控制器
    [self dismissViewControllerAnimated:YES completion:nil];
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
