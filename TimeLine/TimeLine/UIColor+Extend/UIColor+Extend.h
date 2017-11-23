//
//  UIColor+Extend.h
//  ZiRuYi
//
//  Created by DuanHongwu on 16/1/12.
//  Copyright © 2016年 CreditCloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extend)

+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 *  从十六进制字符串获取颜色
 *
 *  @param color NSString : 支持@"#123456"、@"0X123456"、@"123456"三种格式
 *  @param alpha CGFloat : 支持 0.1 - 1.0
 *
 *  @return UIColor
 *
 *  @exception color不空 alpha(0.1-1.0)
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
