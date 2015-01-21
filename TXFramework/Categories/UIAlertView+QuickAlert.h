//
//  UIAlertView+QuickAlert.h
//  ChiDeKai
//
//  Created by liuyu on 14-11-7.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (QuickAlert)
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message  buttonTitle:(NSString *)buttonTitle;

+ (void)alertWithVipLevel:(UIViewController *)vc memberId:(NSString *)memberId;
@end

@interface VipAlertView : UIAlertView<UIAlertViewDelegate>
{
    
    UIViewController *sourceViewController;
}
- (void)showVipAlertView:(UIViewController *)vc memberId:(NSString *)memberId;
@end
