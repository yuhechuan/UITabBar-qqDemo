//
//  YHTabBarController.m
//  UITabBar-qqDemo
//
//  Created by apple on 2017/2/4.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import "YHTabBarController.h"
#import "YHMainHelper.h"
#import "YHRedFlagView.h"
@interface YHTabBarController ()

@end

@implementation YHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpMainController];
    [self customTabBar];
    // Do any additional setup after loading the view.
}

- (void)setUpMainController {
    UIViewController *information = [[UIViewController alloc]init];
    UIViewController *contact = [[UIViewController alloc]init];
    UIViewController *discover = [[UIViewController alloc]init];
    UIViewController *me = [[UIViewController alloc]init];
    information.view.backgroundColor = [UIColor whiteColor];
    YHRedFlagView *redFlagView = [[YHRedFlagView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 25,200, 50, 50)];
    [information.view addSubview:redFlagView];
    contact.view.backgroundColor = [UIColor whiteColor];
    discover.view.backgroundColor = [UIColor whiteColor];
    me.view.backgroundColor = [UIColor whiteColor];
    [self setViewControllers:@[information,contact,discover,me]];
}

- (void)customTabBar {
    [self.tabBar setTintColor:[UIColor colorWithRed:50 / 255.0 green:160 / 255.0 blue:75 / 255.0 alpha:1]];
    NSArray *items = [YHMainHelper tabBarItems];
    NSUInteger count = self.tabBar.items.count;
    for (NSUInteger index = 0; index < count; index++) {
        UITabBarItem *tabBarItem = self.tabBar.items[index];
        tabBarItem.title = items[index][@"title"];
        tabBarItem.image = [YHMainHelper renderImage:items[index][@"icon"]];
        tabBarItem.selectedImage = [YHMainHelper renderImage:items[index][@"iconHL"]];
    }
    YHRedFlagView *redFlagView = [[YHRedFlagView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 8 + 3, -3, 22, 22)];
    [self.tabBar addSubview:redFlagView];
    [self.tabBar bringSubviewToFront:redFlagView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
