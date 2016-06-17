//
//  LASTscrollView.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTscrollView.h"
#import "LASTPostRequest.h"
#import <SDCycleScrollView.h>

#define URL_SCROLL @"http://123.57.141.249:8080/beautalk/appHome/appHome.do"
@interface LASTscrollView()
@property(strong,nonatomic)SDCycleScrollView * scrollView;
@property(strong,nonatomic)NSArray * scrollarr;
@end

@implementation LASTscrollView
-(instancetype)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if (self) {
        [self startScrollRequal];
        
    }
    return self;
}
-(void)startScrollRequal{
    LASTPostRequest * postrequest =[[LASTPostRequest alloc]init];
    postrequest.bodydic=@{
                          @"RelatedId":@"3",
                          @"ImgView":@"http://192.168.0.102:8080/beautalk/testImg/ 0.png",
                          @"RelatedType":@"2"
                          
                          };
    postrequest.urlStr =URL_SCROLL;
    [postrequest starReuquest];
    __weak typeof(self) weakself =self;
    postrequest.scrollarray=^(NSArray * array){
        weakself.scrollarr =array;
        [self addSubview:self.scrollView];
    };
    
}




#pragma mark -
#pragma mark - 懒加载
-(SDCycleScrollView *)scrollView{
    if (!_scrollView) {
        
        _scrollView =[SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 60, VIEW_WIDTH, 232) delegate:nil placeholderImage:[UIImage imageNamed:@"background.jpeg"]];
//        self.automaticallyAdjustsScrollViewInsets = NO;
        NSMutableArray * mutabulearray =[NSMutableArray arrayWithCapacity:10];
        [self.scrollarr enumerateObjectsUsingBlock:^(NSDictionary * dic, NSUInteger idx, BOOL * _Nonnull stop) {
            NSString * imageUrlstr =dic[@"ImgView"];
            [mutabulearray addObject:imageUrlstr];
        }];
        _scrollView.imageURLStringsGroup=mutabulearray;
        //        _scrollView.imageURLStringsGroup
        //        SDCycleScrollView *cycleScrollView = [cycleScrollViewWithFrame:frame delegate:delegate placeholderImage:placeholderImage];
        //        cycleScrollView.imageURLStringsGroup = imagesURLStrings;
    }
    return _scrollView;
}
-(NSArray *)scrollarr{
    
    if (!_scrollarr) {
        _scrollarr =[[NSArray alloc]init];
    }
    return _scrollarr;
}


@end
