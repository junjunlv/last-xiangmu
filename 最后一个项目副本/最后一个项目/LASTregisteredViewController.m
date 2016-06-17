//
//  LASTregisteredViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTregisteredViewController.h"
#import "LASTcheckViewController.h"
#define  SCREEN_WIDTH self.view.frame.size.width
@interface LASTregisteredViewController ()
@property(strong,nonatomic)UITextField * photext;
@property(strong,nonatomic)UITextField * sertext;
@property(strong,nonatomic)UIButton    * button ;

@end

@implementation LASTregisteredViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:self.photext];
    [self.view addSubview:self.sertext];
    [self.view addSubview:self.button];
}
//bold加粗
#pragma mark -
#pragma mark - 懒加载
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
-(UITextField *)sertext{
    if (!_sertext) {
        _sertext =[[UITextField alloc ]initWithFrame:CGRectMake(0, 111, SCREEN_WIDTH, 20)];
        _sertext.borderStyle=UITextBorderStyleRoundedRect;
        _sertext.placeholder=@"请输入密码";
        _sertext.clearButtonMode =UITextFieldViewModeAlways;
        //        隐藏密码
        _sertext.secureTextEntry=YES;
    }
    return _sertext;
}
-(UIButton *)button{
    if (!_button) {
        _button =[UIButton buttonWithType:UIButtonTypeCustom];
        [_button setTitle:@"下一步" forState:UIControlStateNormal];
        [_button setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
        
        
        [_button setTitleColor:[UIColor blueColor] forState:(UIControlStateHighlighted)];
        [_button setBackgroundColor:[UIColor colorWithRed:234.0/255.0 green:234.0/255.0 blue:234.0/255.0 alpha:1.0]];
        _button.frame = CGRectMake(100, 170, SCREEN_WIDTH-200, 40);
        [_button addTarget:self action:@selector(printftext) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _button;
}
-(void)printftext{
    LASTcheckViewController * checkv =[[LASTcheckViewController alloc]init];
    checkv.title=@"验证手机号";
    [self.navigationController pushViewController:checkv animated:YES ];
    NSLog(@"账号：%@密码：%@",self.photext.text,self.sertext.text);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
