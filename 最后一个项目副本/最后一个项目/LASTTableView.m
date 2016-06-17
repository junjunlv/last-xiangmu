//
//  LASTTableView.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTTableView.h"
#import "LASTTableViewCell.h"
@interface LASTTableView()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LASTTableView
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.delegate=self;
        self.dataSource =self;
        self.rowHeight=173;
    }
    return self;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static  NSString   * cellid =@"cellid";
    UITableViewCell * cell =[tableView dequeueReusableCellWithIdentifier:cellid];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:cellid];
    
    }
    return cell;
}
@end
