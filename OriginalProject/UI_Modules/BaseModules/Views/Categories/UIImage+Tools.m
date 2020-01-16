//
//  UIImage+Tools.m
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "UIImage+Tools.h"

@implementation UIImage (Tools)

+ (UIImage *)imageWithColor:(UIColor *)color imageSize:(CGSize)size {
    
    CGRect rect = CGRectMake(0.f, 0.f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage * theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    
    return [UIImage imageWithColor:color imageSize:CGSizeMake(1.f, 1.f)];
}

- (NSData *)compressQualityWithMaxLength:(NSInteger)maxLength {
    CGFloat compression = 1;
    NSData *data = UIImageJPEGRepresentation(self, compression);
    if (data.length < maxLength) return data;
    CGFloat max = 1;
    CGFloat min = 0;
    for (int i = 0; i < 6; ++i) {
        compression = (max + min) / 2;
        data = UIImageJPEGRepresentation(self, compression);
        if (data.length < maxLength * 0.9) {
            min = compression;
        } else if (data.length > maxLength) {
            max = compression;
        } else {
            break;
        }
    }
    return data;
}

@end
