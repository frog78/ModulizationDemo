//
//  MoonRouter.m
//  MoonSample
//
//  Created by qiliu on 2018/1/26.
//  Copyright © 2018年 frog78. All rights reserved.
//

#import "MoonRouter.h"
#import "ModuleManager.h"

static MoonRouter *_router = nil;

@interface MoonRouter () {
    ModuleManager *manager;
}

@end

@implementation MoonRouter

+ (instancetype)shareInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _router = [[self alloc] init];
    });
    return _router;
}


- (instancetype)init {
    
    self = [super init];
    if (self) {
        manager = [ModuleManager shareInstance];
    }
    return self;
}

- (void)presentViewController:(UIViewController *)vc toVC:(NSString *)vcName comp:(completeHandler)comp {
    
    Module *m = [manager getModuleByName:vcName];
    
    //    if (![m.vc isViewLoaded]) {
    [vc presentViewController:m.vc animated:YES completion:comp];
    //    } else {
    
    //    }
}

- (void)pushViewController:(UINavigationController *)nav toVC:(NSString *)vcName {
    
    Module *m = [manager getModuleByName:vcName];
    [nav pushViewController:m.vc animated:YES];
}


@end
