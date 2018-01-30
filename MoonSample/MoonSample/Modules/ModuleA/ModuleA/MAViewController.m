//
//  MAViewController.m
//  ModuleA
//
//  Created by admin on 16/3/17.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "MAViewController.h"

@interface MAViewController ()

@end

@implementation MAViewController

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (IBAction)jumpToB:(id)sender {
    [self.mavDelegate jumpTo:@"ModuleB" controller:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
