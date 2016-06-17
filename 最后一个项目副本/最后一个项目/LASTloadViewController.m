//
//  LASTloadViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTloadViewController.h"
#import "LASTdolandView.h"

#define  SCREEN_WIDTH self.view.frame.size.width

@interface LASTloadViewController ()
@property(strong,nonatomic)LASTdolandView * firstloadView;
@end

@implementation LASTloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self addview];
}
-(void)addview{
    [self.view addSubview:self.firstloadView];
//    [self.view addSubview:<#(nonnull UIView *)#>]
}
-(void)gotoregistView{
    
}
-(LASTdolandView *)firstloadView{
    if (!_firstloadView) {
        _firstloadView =[[LASTdolandView alloc]initWithFrame:CGRectMake(0, 60, SCREEN_WIDTH, 300)];
        _firstloadView.pushcon=self;
        
    }
    
    return _firstloadView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
