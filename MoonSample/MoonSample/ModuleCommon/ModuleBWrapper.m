//
//  ModuleBIM.m
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ModuleBWrapper.h"

@implementation ModuleBWrapper


- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSString *path = [NSString stringWithFormat:@"%@/Frameworks/ModuleB.framework", mainBundle.bundlePath];
        
        NSBundle *frameworkBundle = [NSBundle bundleWithPath:path];
        
        self.mb = [[MBViewController alloc] initWithNibName:@"MBViewController" bundle:frameworkBundle];
        self.mb.mbvDelegate = self;
        self.vc = self.mb;
        
        self.name = name;
        self.router = [MoonRouter shareInstance];
    }
    return self;
}

- (void)jumpTo:(NSString *)moduleName controller:(UIViewController *)vc {
    [self.router presentViewController:vc toVC:moduleName comp:^{
        
    }];
    
//    [self.router pushViewController:vc.navigationController toVC:moduleName];
}

@end
