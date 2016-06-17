//
//  LASTcheckViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTcheckViewController.h"
#define  SCREEN_WIDTH self.view.frame.size.width

@interface LASTcheckViewController ()
@property(strong,nonatomic)UIButton    * button ;
@property(strong,nonatomic)UITextField * photext;

@end

@implementation LASTcheckViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:self.photext];
    [self.view addSubview:self.button];
}
-(UITextField *)photext{
    if (!_photext) {
        _photext =[[UITextField alloc]initWithFrame:CGRectMake(0, 91, self.SCREEN_WIDTH, 20)];
        _photext.borderStyle=UITextBorderStyleRoundedRect;
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
-(UIButton *)button{
    if (!_button) {
        _button =[UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"注册" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
        [_button setTitleColor:[UIColor blueColor] forState:(UIControlStateHighlighted)];
        [_button setBackgroundColor:[UIColor colorWithRed:234.0/255.0 green:234.0/255.0 blue:234.0/255.0 alpha:1.0]];
        _button.frame = CGRectMake(32, 170, SCREEN_WIDTH-64, 40);
        [_button addTarget:self action:@selector(printftext) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _button;
}
-(void)printftext{
    
    NSLog(@"验证码：%@",self.photext.text);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
