//
//  NSString+Verify.h
//  divorce_ios
//
//  Created by liuyu on 14-12-31.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Verify)
- (BOOL)isPhoneNumber;

- (NSArray *)splitStringByChar:(NSString *)charc;
@end
