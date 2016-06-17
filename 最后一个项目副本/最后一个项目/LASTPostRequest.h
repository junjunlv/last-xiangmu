//
//  LASTPostRequest.h
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^scrollArray)(NSArray *);
@interface LASTPostRequest : NSObject
@property (strong,nonatomic)NSDictionary * bodydic;
@property (strong,nonatomic)NSString     * urlStr;
@property (copy  ,nonatomic)scrollArray  scrollarray;
-(void)starReuquest;

-(void)cancleRequest;



@end
