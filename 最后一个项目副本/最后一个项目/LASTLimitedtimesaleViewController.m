//
//  LASTLimitedtimesaleViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTLimitedtimesaleViewController.h"
#import "LASTscrollView.h"
#import "LASTbtnView.h"
#import "LASTloadViewController.h"
#import "LASTTableView.h"
@interface LASTLimitedtimesaleViewController ()
@property(strong,nonatomic)LASTscrollView * scrollView;
@property(strong,nonatomic)LASTbtnView    * btnView;
@property(strong,nonatomic)LASTTableView  * tableView;
@end

@implementation LASTLimitedtimesaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
self.view.backgroundColor =[UIColor redColor];
 
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.btnView];
    [self.view addSubview:self.tableView];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    LASTloadViewController * loadview =[[LASTloadViewController alloc]init];
    loadview.title =@"登录";
    [self.navigationController pushViewController:loadview animated:YES ];
    
}
-(LASTscrollView *)scrollView{
    if (!_scrollView) {
        _scrollView=[[LASTscrollView alloc]initWithFrame:Rect(0, 0, VIEW_WIDTH, 292)];
    }
    return _scrollView;
}
-(LASTbtnView *)btnView{
    if (!_btnView) {
        _btnView=[[LASTbtnView alloc]initWithFrame:Rect(0, 0, VIEW_WIDTH, 50)];
    }
    return _btnView;
}
-(LASTTableView *)tableView{
    if (!_tableView) {
        _tableView =[[LASTTableView alloc]initWithFrame:Rect(0, 342, VIEW_WIDTH, 500) style:(UITableViewStylePlain)];
        _tableView.backgroundColor =[UIColor whiteColor];
    }
    return _tableView;
}
@end
