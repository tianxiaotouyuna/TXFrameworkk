//
//  UIViewController+addBackButton.m
//  JCZ
//
//  Created by liuyu on 14-10-14.
//  Copyright (c) 2014年 ___DOUMEE___. All rights reserved.
//

#import "UIViewController+addBackButton.h"

@implementation UIViewController (addBackButton)
- (void)navigationItemClicked:(UIBarButtonItem *)barButtonItem
{
    [self.navigationController popViewControllerAnimated:YES];
}

/// 添加导航栏左侧的按钮
- (void)addBackButton
{
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"fanhui_03.png"] style:UIBarButtonItemStylePlain target:self action:@selector(navigationItemClicked:)];
    leftItem.tag = 1;
    [self.navigationItem setLeftBarButtonItem:leftItem animated:YES];
}
@end
