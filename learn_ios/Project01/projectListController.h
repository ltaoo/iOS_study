//
//  projectListController.h
//  learn_ios
//
//  Created by ltaoo on 2016/12/10.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface projectListController : UITableViewController<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, copy)NSMutableArray *projects;
@end
