//
//  ViewController.m
//  MoonSample
//
//  Created by qiliu on 2018/1/26.
//  Copyright © 2018年 frog78. All rights reserved.
//

#import "ViewController.h"
#import "MoonRouter.h"
#import "ModuleManager.h"
#import "ModuleAWrapper.h"
#import "ModuleBWrapper.h"


#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController () {
    ModuleManager *maneger;
    MoonRouter *router;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    maneger = [ModuleManager shareInstance];
    Module *moduleA = [[ModuleAWrapper alloc] initWithName:@"ModuleA"];
    Module *moduleB = [[ModuleBWrapper alloc] initWithName:@"ModuleB"];
    
    [maneger addModule:moduleA];
    [maneger addModule:moduleB];
    
    router = [MoonRouter shareInstance];
    
    UIButton *b1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 50, SCREEN_WIDTH, 50)];
    b1.backgroundColor = [UIColor grayColor];
    [b1 setTitle:@"调用模块A" forState:0];
    [b1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *b2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 150, SCREEN_WIDTH, 50)];
    b2.backgroundColor = [UIColor grayColor];
    [b2 setTitle:@"调用模块B" forState:0];
    [b2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:b1];
    [self.view addSubview:b2];
}

//调到模块A
- (void)click1 {
    
    [router presentViewController:self toVC:@"ModuleA" comp:^{
        
    }];
}

//跳到模块B
- (void)click2 {
    
    [router presentViewController:self toVC:@"ModuleB" comp:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
