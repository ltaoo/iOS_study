//
//  projectListController.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/10.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "projectListController.h"
#import "SecondViewController.h"
// 第三天 counter
#import "Counter.h"
// 第四天 tip calculator
#import "TipCalculator.h"
// 第五天
#import "CurrentDate.h"
// 第六天
#import "PassData.h"
// 第七天
#import "HiddenKeyborad.h"
// 第八天
#import "GetPhoto.h"
// 第九天
#import "PullDownRefresh.h"
// 第十天
#import "DeleteItem.h"
// 第十一天
#import "AddNewItem.h"

@interface projectListController ()

@end

@implementation projectListController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _projects = [[NSMutableArray alloc]
                 initWithObjects:
                    @"第一天",
                    @"第二天",
                    @"第三天",
                    @"第四天",
                    @"第五天",
                    @"第六天",
                    @"第七天",
                    @"第八天",
                    @"第九天",
                    @"第十天",
                    @"第十一天",
                 nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
// section 数量
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
// 每个 section 有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_projects count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell==nil) {
        // init
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    // 设置内容
    cell.textLabel.text = [_projects objectAtIndex:indexPath.row];
    // cell.imageView.text = [_textLabel_MArray objectAtIndex:indexPath.row];
    //cell.detailTextLabel.text = [_subtitle_MArray objectAtIndex:indexPath.row];
    return cell;
}
// 当 row 被选择时触发
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController *secondView = [[SecondViewController alloc]init];
    secondView.title = @"Navigator";
    // 第三天 counter
    Counter *counterPage = [[Counter alloc] init];
    counterPage.title = @"Counter";
    // 第四天 tip calculator
    TipCalculator *tipCalculator = [[TipCalculator alloc] init];
    tipCalculator.title = @"Tip Calculator";
    // 第五天 时间
    CurrentDate *currentDate = [[CurrentDate alloc] init];
    currentDate.title = @"Current Date";
    // 第六天 组件间传值
    PassData *passDate = [[PassData alloc] init];
    passDate.title = @"组件间传值";
    // 第七天
    HiddenKeyborad *hiddenKeyborad = [[HiddenKeyborad alloc] init];
    hiddenKeyborad.title = @"隐藏键盘";
    // 第八天 从相册获取照片
    GetPhoto *getPhoto = [[GetPhoto alloc] init];
    getPhoto.title = @"获取照片";
    // 第九天 下拉刷新
    PullDownRefresh *pullDownRefresh = [[PullDownRefresh alloc] init];
    pullDownRefresh.title = @"下拉刷新";
    // 第十天 删除指定行
    DeleteItem *deleteItem = [[DeleteItem alloc] init];
    deleteItem.title = @"删除指定行";
    // 第十一天
    AddNewItem *addNewItem = [[AddNewItem alloc] init];
    addNewItem.title = @"添加新数据";
    // switch 分支处理点击事件
    if(indexPath.row == 2) {
        [self.navigationController pushViewController:counterPage animated:YES];
    } else if(indexPath.row == 3) {
        [self.navigationController pushViewController:tipCalculator animated:YES];
    }
    else if(indexPath.row == 4) {
        [self.navigationController pushViewController:currentDate animated:YES];
    }
    else if(indexPath.row == 5) {
        [self.navigationController pushViewController:passDate animated:YES];
    }
    else if(indexPath.row == 6) {
        [self.navigationController pushViewController:hiddenKeyborad animated:YES];
    }
    else if(indexPath.row == 7) {
        [self.navigationController pushViewController:getPhoto animated:YES];
    }
    else if(indexPath.row == 8) {
        [self.navigationController pushViewController:pullDownRefresh animated:YES];
    }
    else if(indexPath.row == 9) {
        [self.navigationController pushViewController:deleteItem animated:YES];
    }
    else if(indexPath.row == 10) {
        [self.navigationController pushViewController:addNewItem animated:YES];
    }
    else {
        [self.navigationController pushViewController:secondView animated:YES];
    }
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
