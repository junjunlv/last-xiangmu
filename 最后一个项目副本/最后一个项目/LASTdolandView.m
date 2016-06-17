//
//  LASTdolandView.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTdolandView.h"
#import "LASTregisteredViewController.h"
#define  SCREEN_WIDTH self.frame.size.width

@interface LASTdolandView()
@property(strong,nonatomic)UILabel     * backgroundlabel;
@property(strong,nonatomic)UITextField * photext;
@property(strong,nonatomic)UITextField * sertext;
@property(strong,nonatomic)UILabel     * linelabel;
@property(strong,nonatomic)UIButton    * button ;
@property(strong,nonatomic)UIButton    * registbtn;
@end
@implementation LASTdolandView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.backgroundlabel];
        [self addSubview:self.photext];
        [self addSubview:self.sertext];
        [self addSubview:self.button];
        [self addSubview:self.registbtn];
        [self addSubview:self.linelabel];
        self.backgroundColor =RGB(245.0, 245.0, 245.0);
    }
    return self;
}
#pragma mark -
#pragma mark -自动布局
-(void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof (self ) weakself =self;
    [self.backgroundlabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.mas_top).offset(15);
        make.left.equalTo(weakself.mas_left);
        make.right.equalTo(weakself.mas_right);
        make.height.equalTo(89);
    }];
    [self.photext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.backgroundlabel.mas_top);
        make.left.equalTo(weakself.backgroundlabel.mas_left).offset(15);
        make.right.equalTo(weakself.backgroundlabel.mas_right).offset(-15);
        make.height.equalTo(44);
    }];
    [self.linelabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.backgroundlabel.mas_top).offset(44);
        make.left.equalTo(weakself.backgroundlabel.mas_left).offset(15);
        make.right.equalTo(weakself.backgroundlabel.mas_right).offset(-15);
        make.height.equalTo(1);
    }];
    [self.sertext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.backgroundlabel.mas_top).offset(45);
        make.left.equalTo(weakself.backgroundlabel.mas_left).offset(15);
        make.right.equalTo(weakself.backgroundlabel.mas_right).offset(-15);
        make.height.equalTo(44);
    }];
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.mas_top).offset(119);
        make.left.equalTo(weakself.mas_left).offset(15);
        make.right.equalTo(weakself.mas_right).offset(-15);
        make.height.equalTo(35);
    }];
    [self.registbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.button.mas_top).offset(35);
        make.left.equalTo(weakself.mas_left).offset(SCREEN_WIDTH-95);
        make.right.equalTo(weakself.mas_right).offset(-15);
        make.height.equalTo(35);
    }];

}
#pragma mark -
#pragma mark - 点击事件
-(void)printftext{
    
    NSLog(@"账号：%@密码：%@",self.photext.text,self.sertext.text);
}
-(void)changeView{
    
    LASTregisteredViewController * registerVC =[[LASTregisteredViewController alloc]init];
    [self.pushcon.navigationController pushViewController:registerVC animated:YES];
   
}
//bold加粗
#pragma mark -
#pragma mark - 懒加载
-(UILabel *)backgroundlabel{
    if (!_backgroundlabel) {
        _backgroundlabel =[[UILabel alloc]init];
        _backgroundlabel.backgroundColor=[UIColor whiteColor];
    }
    return _backgroundlabel;
}
-(UIButton *)registbtn{
    if (!_registbtn) {
        _registbtn=[UIButton buttonWithType:UIButtonTypeCustom];
       
        
        [_registbtn setTitle:@"免费注册" forState:UIControlStateNormal];
        [_registbtn setTitleColor:[UIColor blueColor] forState:(UIControlStateNormal)];
        [_registbtn addTarget:self action:@selector(changeView) forControlEvents:(UIControlEventTouchUpInside)];
       
    }
    return _registbtn;
}


-(UITextField *)sertext{
    if (!_sertext) {
        _sertext =[[UITextField alloc]init];
        _sertext.borderStyle=UITextBorderStyleNone;
        _sertext.placeholder=@"请输入密码";
        _sertext.clearButtonMode =UITextFieldViewModeAlways;
        //        隐藏密码
        _sertext.secureTextEntry=YES;
    }
    return _sertext;
}
-(UITextField *)photext{
    if (!_photext) {
        _photext =[[UITextField alloc]init];
//        文本框样式
        _photext.borderStyle=UITextBorderStyleNone;
        //水印提示
        _photext.placeholder=@"请输入手机号码";
        //x号的显示
        /*UITextFieldViewModeNever,  重不出现
         UITextFieldViewModeWhileEditing, 编辑时出现
         UITextFieldViewModeUnlessEditing,  除了编辑外都出现
         UITextFieldViewModeAlways   一直出现*/
        _photext.clearButtonMode =UITextFieldViewModeAlways;
    }
    return _photext;
}
-(UILabel *)linelabel{
    if (!_linelabel) {
        _linelabel =[[UILabel alloc]init];
        _linelabel.backgroundColor=RGB(230, 230, 230);
    }
    return _linelabel;
}
-(UIButton *)button{
    if (!_button) {
        _button =[UIButton buttonWithType:UIButtonTypeCustom];
//        [_button setTitle:@"登录" forState:UIControlStateNormal];
        
        [_button setBackgroundImage:[UIImage imageNamed:@"登录界面登录按钮"] forState:UIControlStateNormal];
        
        [_button addTarget:self action:@selector(printftext) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _button;
}

@end
