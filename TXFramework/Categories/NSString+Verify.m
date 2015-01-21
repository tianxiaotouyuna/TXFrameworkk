//
//  NSString+Verify.m
//  divorce_ios
//
//  Created by liuyu on 14-12-31.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import "NSString+Verify.h"

@implementation NSString (Verify)

- (BOOL)isPhoneNumber
{
    NSString *regString = @"^((13[0-9])|(15[^4,\\D])|(14[0-9])|(18[0-9]))\\d{8}$";
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regString options:0 error:nil];
    NSTextCheckingResult *matchResult = [regex firstMatchInString:self options:0 range:NSMakeRange(0, self.length)];
    //如果账户输入不正确，则重新把光标定位到输入框中
    
    return matchResult==nil?NO:YES;
}

- (NSArray *)splitStringByChar:(NSString *)charc
{
    
    NSArray *array;
    //如果字符串长度为零，则生成空数组，否则用逗号分割字符串
    if (self.length == 0)
    {
        array = @[];
    }
    else
    {
        array = [self componentsSeparatedByString:@","];
    }
    return array;
}
@end
