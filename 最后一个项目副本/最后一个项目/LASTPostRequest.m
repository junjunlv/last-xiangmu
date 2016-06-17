//
//  LASTPostRequest.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTPostRequest.h"
#import "NSDictionary+LASTChangeDIcToStr.h"

@interface LASTPostRequest()<NSURLConnectionDataDelegate>
@property(strong,nonatomic)NSURLConnection * connection;
@property(strong,nonatomic)NSMutableData   * sendData;
@end

@implementation LASTPostRequest
-(void)starReuquest{
    NSURL * url =[NSURL URLWithString:self.urlStr];
    NSMutableURLRequest * murequest =[NSMutableURLRequest requestWithURL:url cachePolicy:0 timeoutInterval:60];
    murequest.HTTPMethod=@"POST";
    NSData * bodyData =[[self.bodydic ChangeDicTostring]dataUsingEncoding:NSUTF8StringEncoding];
    murequest.HTTPBody =bodyData;
    self.connection=[NSURLConnection connectionWithRequest:murequest delegate:self];
    [self.connection start];
    
}

-(void)cancleRequest{
    [self.connection cancel];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    self.sendData =[NSMutableData dataWithCapacity:10];
    
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [self.sendData appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSArray *array =[NSJSONSerialization JSONObjectWithData:self.sendData options:0 error:nil];
    NSLog(@"%@",array);
    if (_scrollarray) {
        _scrollarray(array);
    }
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"%@",error.localizedDescription);
}
@end
