//
//  SWViewController.h
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationController+Style.h"

NS_ASSUME_NONNULL_BEGIN

@interface SWViewController : UIViewController

@property (nonatomic, strong) UIButton *leftBarBtn;
@property (nonatomic, strong) UIView *titleView;
@property (nonatomic, strong) UIButton *rightBarBtn;

- (void)leftBarBtnClick:(id)sender;
- (void)rightBarBtnClick:(id)sender;

@end

NS_ASSUME_NONNULL_END
