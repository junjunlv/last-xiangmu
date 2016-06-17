//
//  NSDictionary+LASTChangeDIcToStr.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "NSDictionary+LASTChangeDIcToStr.h"

@implementation NSDictionary (LASTChangeDIcToStr)
-(NSString *)ChangeDicTostring{
    NSArray * keyarr =  self.allKeys;
    
    NSMutableString * mustring=[NSMutableString stringWithCapacity:20];
    [keyarr enumerateObjectsUsingBlock:^(NSString  * key, NSUInteger idx, BOOL *  stop) {
        NSString * value =self[key];
        [mustring appendFormat:@"%@=%@&",key,value];
    }];
    [mustring deleteCharactersInRange:NSMakeRange(mustring.length-1, 1)];
    return mustring;
}
@end
