//
//  TimeLineTableViewCell.h
//  TimeLine
//
//  Created by everp2p on 2017/11/23.
//  Copyright © 2017年 TangLiHua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeLineTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *leftUpLabel; //!< 上

@property (nonatomic, strong) UIImageView *iconImageView;//!< 时间轴指向标

@property (nonatomic, strong) UILabel *leftDownLabel; //!< 下

@property (nonatomic, strong) UILabel *titleLabel; //!< 标题

@property (nonatomic, strong) UILabel *detailLabel; //!< 详细内容

- (void)setUpWithCellIndex:(NSInteger)index;

@end
