//
//  UIImage+Tools.h
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Tools)

/**
 根据颜色生成指定大小图片
 
 @param color 颜色
 @param size 大小
 @return UIImage
 */
+ (UIImage *)imageWithColor:(UIColor *)color imageSize:(CGSize)size;

/**
 根据颜色生成图片
 
 @return UIImage
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 图片压缩
 
 @param maxLength 最大值
 @return 压缩有的图片
 */
- (NSData *)compressQualityWithMaxLength:(NSInteger)maxLength;

@end

NS_ASSUME_NONNULL_END
