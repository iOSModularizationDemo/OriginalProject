//
//  UINavigationController+Style.m
//  OriginalProject
//
//  Created by leo on 2020/1/16.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "UINavigationController+Style.h"
#import "UIImage+Tools.h"

@implementation UINavigationController (Style)

- (void)setTextColor:(UIColor *)textColor {
    if (!textColor || ![textColor isKindOfClass:UIColor.class]) {
        return;
    }
    NSMutableDictionary *attributies = [self.navigationBar.titleTextAttributes mutableCopy];
    if (!attributies) {
        attributies = [NSMutableDictionary dictionary];
    }
    [attributies setObject:textColor forKey:NSForegroundColorAttributeName];
    self.navigationBar.translucent = NO;
    self.navigationBar.titleTextAttributes = attributies;
}

- (void)setTextFont:(UIFont *)textFont {
    if (!textFont || ![textFont isKindOfClass:UIFont.class]) {
        return;
    }
    NSMutableDictionary *attributies = [self.navigationBar.titleTextAttributes mutableCopy];
    if (!attributies) {
        attributies = [NSMutableDictionary dictionary];
    }
    [attributies setObject:textFont forKey:NSFontAttributeName];
    self.navigationBar.translucent = NO;
    self.navigationBar.titleTextAttributes = attributies;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    if (!backgroundColor || ![backgroundColor isKindOfClass:UIColor.class]) {
        return;
    }
    [self.navigationBar setBackgroundImage:[UIImage imageWithColor:backgroundColor] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = [UIImage imageWithColor:backgroundColor];
    self.navigationBar.barTintColor = backgroundColor;
}

- (void)setBackgroundImage:(UIImage *)backgroundImage {
    if (!backgroundImage || ![backgroundImage isKindOfClass:UIImage.class]) {
        return;
    }
    [self.navigationBar setBackgroundImage:backgroundImage forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = backgroundImage;
    self.navigationBar.barTintColor = [UIColor clearColor];
}

@end
