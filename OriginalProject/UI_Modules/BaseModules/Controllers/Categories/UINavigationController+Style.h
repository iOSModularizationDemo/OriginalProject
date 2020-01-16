//
//  UINavigationController+Style.h
//  OriginalProject
//
//  Created by leo on 2020/1/16.
//  Copyright © 2020 seaway. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (Style)

- (void)setTextColor:(UIColor *)textColor;
- (void)setTextFont:(UIFont *)textFont;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBackgroundImage:(UIImage *)backgroundImage;

@end

NS_ASSUME_NONNULL_END
