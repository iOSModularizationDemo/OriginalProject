//
//  A_ViewController.m
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "A_ViewController.h"
#import "B_ViewController.h"

@interface A_ViewController ()

@end

@implementation A_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"A";
    [self.leftBarBtn setTitle:@"Back" forState:UIControlStateNormal];
    [self.rightBarBtn setTitle:@"Next" forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setBackgroundColor:[UIColor redColor]];
}

- (void)rightBarBtnClick:(id)sender {
    B_ViewController *vc = [[B_ViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
