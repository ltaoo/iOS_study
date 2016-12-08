//
//  TableView.m
//  learn_ios
//
//  Created by ltaoo on 2016/12/8.
//  Copyright © 2016年 ltaoo. All rights reserved.
//

#import "TableView.h"

@interface TableView ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation TableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if(self) {
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}

-(void)setTableViewFrame:(CGRect)tableViewFrame
{
    self.frame = tableViewFrame;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_textLabel_MArray count];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"页眉";
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @"页脚";
}

// 实现每一行 cell 的内容

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell==nil) {
        // init
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    // 设置内容
    cell.textLabel.text = [_textLabel_MArray objectAtIndex:indexPath.row];
    // cell.imageView.text = [_textLabel_MArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [_subtitle_MArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
