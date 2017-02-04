//
//  YHMainHelper.h
//  UITabBar-qqDemo
//
//  Created by apple on 2017/2/4.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YHMainHelper : NSObject

/**
 *  tabBar控制器配置文件
 *
 *  @return 数组
 */
+ (NSArray *)tabBarItems;

/**
 *  生成图片
 *
 *  @param imageName 图片名
 *
 *  @return 图片
 */
+ (UIImage *)renderImage:(NSString *)imageName;

@end
