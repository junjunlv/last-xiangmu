//
//  LASTTableViewCell.m
//  最后一个项目
//
//  Created by cj on 16/6/16.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "LASTTableViewCell.h"
#import "Masonry.h"
@interface LASTTableViewCell()
@property(strong,nonatomic)UIImageView * imageview;
@property(strong,nonatomic)UIImageView * buyimageview;
@property(strong,nonatomic)UILabel     * moretext;
@property(strong,nonatomic)UILabel     * pricetext;
@end


@implementation LASTTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.buyimageview];
        [self addSubview:self.imageview];
        [self addSubview:self.pricetext];
        [self addSubview:self.moretext];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    __weak typeof(self) weakself =self;
    [self.imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.mas_top).offset(15);
        make.left.equalTo(weakself.mas_left).offset(5);
        make.right.equalTo(weakself.mas_right);
        make.bottom.equalTo(weakself.mas_bottom).offset(15);
       

    }];
    [self.moretext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.mas_top).offset(25);
        make.left.equalTo(weakself.imageview.mas_left).offset(2);
        make.right.equalTo(weakself.mas_right).offset(17);
//        make.bottom.equalTo(weakself.mas_bottom).offset(15);
    }];
    [self.buyimageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.moretext.mas_top).offset(14);
        make.right.equalTo(weakself.mas_right).offset(44);
        make.bottom.equalTo(weakself.mas_bottom).offset(20);
        
    }];
    [self.pricetext mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakself.moretext.mas_top).offset(26);
        make.bottom.equalTo(weakself.mas_bottom).offset(28);
    }];
    
}
-(UILabel *)pricetext{
    if (!_pricetext) {
        _pricetext=[[UILabel alloc]init];
        
    }
    return _pricetext;
}
-(UILabel *)moretext{
    if (!_moretext) {
        _moretext=[[UILabel alloc]init];
        _moretext.backgroundColor=[UIColor purpleColor];
    }
    return _moretext;
}
-(UIImageView *)buyimageview{
    if (!_buyimageview) {
        _buyimageview=[[UIImageView alloc]init];
    }
    return _buyimageview;
}
-(UIImageView *)imageview{
    if (!_imageview) {
        _imageview=[[UIImageView alloc]init];
        _imageview.backgroundColor=[UIColor redColor];
    }
    return _imageview;
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
