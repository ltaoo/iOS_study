//
//  TableView.h
//  learn_ios
//
//  Created by ltaoo on 2016/12/8.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import <UIKit/UIKit.h>
// 最后面的是协议
@interface TableView : UITableView
// tableView 的位置
@property (nonatomic, assign) CGRect tableViewFrame;
// 存放在 cell 各行上 textLabel，即标题
@property (nonatomic, copy)NSMutableArray *textLabel_MArray;
// 每一行的 imageView 图片
@property (nonatomic, copy)NSMutableArray *image_MArray;
// detailLabel，即详情
@property (nonatomic, copy)NSMutableArray *subtitle_MArray;

@end
