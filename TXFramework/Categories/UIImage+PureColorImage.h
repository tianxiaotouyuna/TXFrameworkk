//
//  UIImage+PureColorImage.h
//  divorce_ios
//
//  Created by liuyu on 14-12-31.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (PureColorImage)


/*
 *  get a image with a pure color around size
 */
+ (UIImage *)pureColorImage:(UIColor *)color withSize:(CGSize)size;

+ (UIImage *)pureHexColorImage:(NSString *)hexColor withSize:(CGSize)size;

@end
