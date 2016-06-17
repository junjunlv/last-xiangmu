//
//  LASTTabViewController.m
//  最后一个项目
//
//  Created by cj on 16/6/15.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTTabViewController.h"
#import "LASTnavViewController.h"
@interface LASTTabViewController ()

@end

@implementation LASTTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addViewController];
}
-(void)addViewController{
    NSArray * array =[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"controClass.plist" ofType:nil]];
    NSMutableArray * mutabarray =[NSMutableArray arrayWithCapacity:4];
    for (NSDictionary *dic in array) {
        Class  controllerClassName =NSClassFromString(dic[@"class"]);
        UIViewController *viewController =[[controllerClassName alloc]init];
        viewController.title=dic[@"classname"];
        viewController.tabBarItem.image=[[UIImage imageNamed:dic[@"navimage"] ]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage=[[UIImage imageNamed:dic[@"selectimage"]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.title=dic[@"classname"];
        [viewController.tabBarItem
         setTitleTextAttributes:@{
                                  NSFontAttributeName:[UIFont boldSystemFontOfSize:15],
                                  NSForegroundColorAttributeName:
                                      [UIColor redColor]
                                                            }
         forState:UIControlStateSelected];
        [viewController.tabBarItem
         setTitleTextAttributes:@{
                                NSFontAttributeName:  [UIFont systemFontOfSize:15],
                                NSForegroundColorAttributeName:[UIColor darkGrayColor]
                                                            }
         forState:(UIControlStateNormal)];
        
        LASTnavViewController * nav =[[LASTnavViewController alloc]initWithRootViewController:viewController];
        
        [mutabarray addObject:nav];

    }
    self.viewControllers=mutabarray;
    self.selectedIndex=0;
    
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
