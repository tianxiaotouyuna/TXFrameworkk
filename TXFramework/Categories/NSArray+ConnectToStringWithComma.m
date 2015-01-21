//
//  NSArray+ConnectToStringWithComma.m
//  divorce_ios
//
//  Created by liuyu on 15-1-9.
//  Copyright (c) 2015年 liuyu. All rights reserved.
//

#import "NSArray+ConnectToStringWithComma.h"

@implementation NSArray (ConnectToStringWithComma)
- (NSString *)ConnectToStringWithComma
{
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:100];
    
    for (NSString *itemString in self)
    {
        [string appendString:itemString];
        [string appendString:@","];
    }
    
    NSString *result = string;
    if ([string length] > 0)
    {
        NSRange range = NSMakeRange(0, string.length - 1);
        result = [string substringWithRange:range];
    }
    
    NSLog(@"数组转逗号分割字符串，结果是---->%@", result);
    return result;
}
@end
