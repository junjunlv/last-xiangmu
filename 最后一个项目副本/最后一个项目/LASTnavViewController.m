//
//  LASTnavViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTnavViewController.h"

@interface LASTnavViewController ()

@end

@implementation LASTnavViewController
//initialize/*在程序运行过程中，它会在你程序中每个类调用一次initialize。这个调用的时间发生在你的类接收到消息之前，但是在它的超类接收到initialize之后。*/
/*appearance 外观*/
+(void)initialize{
    UINavigationBar  *navbar =[UINavigationBar appearance];
    [navbar setTintColor:[UIColor darkGrayColor]];
    
    
    [navbar setTitleTextAttributes:@{
                                     NSFontAttributeName:[UIFont systemFontOfSize:22],
                                     NSForegroundColorAttributeName:[UIColor blackColor]
                                     }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
