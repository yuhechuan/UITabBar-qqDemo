//
//  YHMainHelper.m
//  UITabBar-qqDemo
//
//  Created by apple on 2017/2/4.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import "YHMainHelper.h"

@implementation YHMainHelper

/**
 *  tabBar控制器配置文件
 *
 *  @return 数组
 */
+ (NSArray *)tabBarItems {
    NSMutableArray *items = [NSMutableArray array];
    // 微信
    NSMutableDictionary *item1 = [NSMutableDictionary dictionary];
    item1[@"title"] = @"微信";
    item1[@"icon"] = @"tabbar_mainframe";
    item1[@"iconHL"] = @"tabbar_mainframeHL";
    [items addObject:item1];
    // 通讯录
    NSMutableDictionary *item2 = [NSMutableDictionary dictionary];
    item2[@"title"] = @"通讯录";
    item2[@"icon"] = @"tabbar_contacts";
    item2[@"iconHL"] = @"tabbar_contactsHL";
    [items addObject:item2];
    
    // 发现
    NSMutableDictionary *item3 = [NSMutableDictionary dictionary];
    item3[@"title"] = @"发现";
    item3[@"icon"] = @"tabbar_discover";
    item3[@"iconHL"] = @"tabbar_discoverHL";
    [items addObject:item3];
   
    // 我
    NSMutableDictionary *item4 = [NSMutableDictionary dictionary];
    item4[@"title"] = @"我";
    item4[@"icon"] = @"tabbar_me";
    item4[@"iconHL"] = @"tabbar_meHL";
    [items addObject:item4];
    
    return items;
}

/**
 *  生成图片
 *
 *  @param imageName 图片名
 *
 *  @return 图片
 */
+ (UIImage *)renderImage:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return image;
}

@end
