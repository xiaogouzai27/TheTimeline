//
//  TimeLineTableViewCell.m
//  TimeLine
//
//  Created by everp2p on 2017/11/23.
//  Copyright © 2017年 TangLiHua. All rights reserved.
//

#import "TimeLineTableViewCell.h"

@implementation TimeLineTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self initCell];
    }
    return self;
}

- (void)initCell
{
    _iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15 * KScale, 20 * KScale, 10 * KScale, 10 * KScale)];
    [self.contentView addSubview:_iconImageView];
    
    _leftUpLabel = [[UILabel alloc] initWithFrame:CGRectMake(leftCellKScale, 0, 0.5 * KScale, 20 * KScale)];
    _leftUpLabel.backgroundColor = [UIColor colorWithHexString:@"#e9eaec"];
    [self.contentView addSubview:_leftUpLabel];
    
    _leftDownLabel = [[UILabel alloc] initWithFrame:CGRectMake(leftCellKScale, _iconImageView.bottom, 0.5 * KScale, 40 * KScale)];
    _leftDownLabel.backgroundColor = [UIColor colorWithHexString:@"#e9eaec"];
    [self.contentView addSubview:_leftDownLabel];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(40 * KScale, leftCellKScale, kDeviceWidth - 40 * KScale, 12 * KScale)];
    _titleLabel.font = [UIFont systemFontOfSize:12];
    _titleLabel.textColor = [UIColor colorWithHexString:@"#a0aab8"];
    [self.contentView addSubview:_titleLabel];
    
    _detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(40 * KScale, _titleLabel.bottom + 5 * KScale, kDeviceWidth - 40 * KScale, 10 * KScale)];
    _detailLabel.font = [UIFont systemFontOfSize:10];
    _detailLabel.textColor = [UIColor colorWithHexString:@"#a0aab8"];
    [self.contentView addSubview:_detailLabel];
}

- (void)setUpWithCellIndex:(NSInteger)index
{
    if (index == 0) {
        _leftUpLabel.hidden = YES;
        _iconImageView.image = [UIImage imageNamed:@"NoCompletInstruction"];
        _titleLabel.text = @"运输中";
        _detailLabel.text = @"[天津市]快件已到达 天津分拨中心";
        _titleLabel.textColor = [UIColor colorWithHexString:@"#0098dd"];
        _detailLabel.textColor = [UIColor colorWithHexString:@"#0098dd"];
    }else if (index == 14) {
        _iconImageView.image = [UIImage imageNamed:@"CompletInstruction"];
        _leftDownLabel.hidden = YES;
        _titleLabel.text = @"已下单";
        _detailLabel.text = @"商品已经下单";
    }else if (index == 13) {
        _iconImageView.image = [UIImage imageNamed:@"CompletInstruction"];
        _titleLabel.text = @"已发货";
        _detailLabel.text = @"包裹正在等待揽件";
    }else if (index == 12) {
        _iconImageView.image = [UIImage imageNamed:@"CompletInstruction"];
        _titleLabel.text = @"已揽件";
        _detailLabel.text = @"[上海市] 您的包裹已由物流公司揽件";
    }else{
        self.iconImageView.frame = CGRectMake(18 * KScale, 20 * KScale, 4 * KScale, 4 * KScale);
        _leftDownLabel.y = _iconImageView.bottom;
        _leftDownLabel.height += 6 * KScale;
        _iconImageView.image = [UIImage imageNamed:@"DoesComplet"];
        _titleLabel.hidden = YES;
        _detailLabel.frame = _titleLabel.frame;
        _detailLabel.text = @"[上海市] 快件已到达 上海分拨中心";
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
















