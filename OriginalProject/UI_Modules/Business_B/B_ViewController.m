//
//  B_ViewController.m
//  OriginalProject
//
//  Created by leo on 2020/1/15.
//  Copyright © 2020 seaway. All rights reserved.
//

#import "B_ViewController.h"

@interface B_ViewController ()

@end

@implementation B_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"B";
    self.rightBarBtn.hidden = YES;
    [self.leftBarBtn setTitle:@"Back" forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setBackgroundColor:[UIColor yellowColor]];
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
