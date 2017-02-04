//
//  YHRedFlagView.h
//  UITabBar-qqDemo
//
//  Created by apple on 2017/2/4.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, YHRedFlagType) {
    YHRedFlagTypeNumber = 1, //数字红点
    YHRedFlagTypeDot         //小红点
};

@interface YHRedFlagView : UIButton

/** 大圆脱离小圆的最大距离 */
@property (nonatomic, assign) CGFloat        maxDistance;

/** 小圆 */
@property (nonatomic, strong) UIView         *samllCircleView;

/** 按钮消失的动画图片组 */
@property (nonatomic, strong) NSMutableArray *images;

/** 颜色 */
@property (nonatomic, strong) UIColor *mainBackgroudColor;

@end
