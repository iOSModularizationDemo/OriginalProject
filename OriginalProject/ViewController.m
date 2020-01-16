//
//  ViewController.m
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "ViewController.h"
#import "A_ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Home";
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.rightBarBtn];
    [self.rightBarBtn setTitle:@"Next" forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setBackgroundColor:[UIColor whiteColor]];
}

- (void)rightBarBtnClick:(id)sender {
    A_ViewController *vc = [[A_ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
