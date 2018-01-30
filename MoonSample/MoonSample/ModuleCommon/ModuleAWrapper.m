//
//  ModuleAIM.m
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ModuleAWrapper.h"

@implementation ModuleAWrapper


- (instancetype)initWithName:(NSString *)name {
    
    self = [super init];
    if (self) {
        [UIImage imageNamed:@""];
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSString *path = [NSString stringWithFormat:@"%@/Frameworks/ModuleA.framework", mainBundle.bundlePath];
        
        NSBundle *frameworkBundle = [NSBundle bundleWithPath:path];
        
        self.ma = [[MAViewController alloc] initWithNibName:@"MAViewController" bundle:frameworkBundle];
        self.vc = self.ma;
        self.ma.mavDelegate = self;
        self.name = name;
        self.router = [MoonRouter shareInstance];
    }
    return self;
}

- (void)jumpTo:(NSString *)moduleName controller:(UIViewController *)vc; {
    [self.router presentViewController:vc toVC:moduleName comp:^{
        
    }];
    
//    [self.router pushViewController:vc.navigationController toVC:moduleName];
}

@end
