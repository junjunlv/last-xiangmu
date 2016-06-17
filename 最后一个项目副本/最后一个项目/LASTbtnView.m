//
//  LASTbtnView.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTbtnView.h"

@interface LASTbtnView()
@property(strong,nonatomic)UIButton* newbtn;
@property(strong,nonatomic)UIButton* brandbtn;
@end

@implementation LASTbtnView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.newbtn];
        [self addSubview:self.brandbtn];
    }
    return self;
}
-(UIButton *)newbtn{
    if (!_newbtn) {
        _newbtn=[UIButton buttonWithType:UIButtonTypeCustom];
        _newbtn.frame =CGRectMake(0, 292,VIEW_WIDTH/2 , 50) ;
        [_newbtn setTitle:@"新品团购" forState:(UIControlStateNormal)];
        [_newbtn setTitleColor:[UIColor colorWithRed:253.0/255.0 green:80.0/255.0 blue:37.0 alpha:1] forState:(UIControlStateNormal)];
        [_newbtn setBackgroundColor:[UIColor whiteColor]];
        _newbtn.font =[UIFont systemFontOfSize:20];
        [_newbtn setImage:[UIImage imageNamed:@"限时特卖界面新品团购图标"] forState:(UIControlStateNormal)];
    }
    return _newbtn;
}
-(UIButton *)brandbtn{
    if (!_brandbtn) {
        _brandbtn =[UIButton buttonWithType:UIButtonTypeCustom];
        _brandbtn.frame=Rect(VIEW_WIDTH/2, 292, VIEW_WIDTH/2, 50);
        
        [_brandbtn setTitle:@"品牌团购" forState:(UIControlStateNormal)];
        [_brandbtn setTitleColor:[UIColor colorWithRed:253.0/255.0 green:80.0/255.0 blue:37.0 alpha:1] forState:(UIControlStateNormal)];
        [_brandbtn setBackgroundColor:[UIColor whiteColor]];
        _brandbtn.font =[UIFont systemFontOfSize:20];
        [_brandbtn setImage:[UIImage imageNamed:@"限时特卖界面新品团购图标"] forState:(UIControlStateNormal)];
    }
    return _brandbtn;
}

@end
