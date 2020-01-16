//
//  SWViewController.m
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "SWViewController.h"

@interface SWViewController ()

@end

@implementation SWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.leftBarBtn];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.rightBarBtn];
}

#pragma mark - Public
- (void)leftBarBtnClick:(id)sender {
    if (self.presentationController && (!self.navigationController || self.navigationController.isNavigationBarHidden)) {
        [self dismissViewControllerAnimated:YES completion:nil];
        return;
    }
        
    if (self.navigationController && !self.navigationController.isNavigationBarHidden){
        [self.navigationController popViewControllerAnimated:YES];
        return;
    }
}

- (void)rightBarBtnClick:(id)sender {}

#pragma mark - Getter/Setter
- (UIButton *)leftBarBtn {
    if (!_leftBarBtn) {
        _leftBarBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_leftBarBtn.titleLabel setFont:[UIFont systemFontOfSize:16.f]];
        [_leftBarBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_leftBarBtn addTarget:self action:@selector(leftBarBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _leftBarBtn;
}

- (UIButton *)rightBarBtn {
    if (!_rightBarBtn) {
        _rightBarBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_rightBarBtn.titleLabel setFont:[UIFont systemFontOfSize:16.f]];
        [_rightBarBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_rightBarBtn addTarget:self action:@selector(rightBarBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _rightBarBtn;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
