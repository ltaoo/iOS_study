//
//  TableView.h
//  learn_ios
//
//  Created by ltaoo on 2016/12/8.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import <UIKit/UIKit.h>
// TableView 是被委托者，声明自己实现了被委托了 UITableViewDataSource 和 UITableViewDelegate 两个协议
@interface TableView : UITableView<UITableViewDataSource, UITableViewDelegate>
// tableView 的位置
@property (nonatomic, assign) CGRect tableViewFrame;
// 存放在 cell 各行上 textLabel，即标题
@property (nonatomic, copy)NSMutableArray *textLabel_MArray;
// 每一行的 imageView 图片
@property (nonatomic, copy)NSMutableArray *image_MArray;
// detailLabel，即详情
@property (nonatomic, copy)NSMutableArray *subtitle_MArray;

@end
