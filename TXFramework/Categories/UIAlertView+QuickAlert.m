//
//  UIAlertView+QuickAlert.m
//  ChiDeKai
//
//  Created by liuyu on 14-11-7.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import "UIAlertView+QuickAlert.h"
#import "PayViewController.h"
#import "PersonCenterViewController.h"


@implementation UIAlertView (QuickAlert)

+ (void)alertWithTitle:(NSString *)title message:(NSString *)message  buttonTitle:(NSString *)buttonTitle
{
    if (buttonTitle == nil || buttonTitle.length == 0)
    {
        buttonTitle = @"确定";
    }
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:buttonTitle otherButtonTitles:nil];
    [alertView show];
}


+ (void)alertWithVipLevel:(UIViewController *)vc memberId:(NSString *)memberId
{
    [[[VipAlertView alloc] init] showVipAlertView:vc memberId:memberId];
}
@end

@implementation VipAlertView


- (void)showVipAlertView:(UIViewController *)vc memberId:(NSString *)memberId
{
    sourceViewController = vc;
    NSString *vipLevel = [PersonInfo personInfo].vipLevel;
    if ([vipLevel intValue] == 0)
    {
        UIAlertView *alertView = [self initWithTitle:@"成为VIP会员，您将享受更多服务" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alertView show];
    }
    else
    {
        PersonCenterViewController *personVC = [[PersonCenterViewController alloc] initWithUserID:memberId];
        [vc.navigationController pushViewController:personVC animated:YES];
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    {
        PayViewController *vipVC = [[PayViewController alloc] init];
        [sourceViewController.navigationController pushViewController:vipVC animated:YES];
    }
}
@end