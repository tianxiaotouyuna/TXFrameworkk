//
//  UIImage+PureColorImage.m
//  divorce_ios
//
//  Created by liuyu on 14-12-31.
//  Copyright (c) 2014年 liuyu. All rights reserved.
//

#import "UIImage+PureColorImage.h"
#import "UIColor+expanded.h"

@implementation UIImage (PureColorImage)

+ (UIImage *)pureColorImage:(UIColor *)color withSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}


+ (UIImage *)pureHexColorImage:(NSString *)hexColor withSize:(CGSize)size
{
    UIColor *objcColor = [UIColor colorWithHexString:hexColor];
    return [UIImage pureColorImage:objcColor withSize:size];
}
@end
