//
//  ModuleManager.m
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "ModuleManager.h"

static ModuleManager *_manager = nil;

@implementation ModuleManager

+ (instancetype)shareInstance {
    
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        _manager = [[self alloc] init];
    });
    return _manager;
}

- (instancetype)init {
    
    self = [super init];
    if (self) {
        _modules = [NSMutableDictionary dictionaryWithCapacity:0];
    }
    return self;
}


- (void)loadModlues {
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"modules" ofType:@"plist"];
    NSArray *data = [[NSArray alloc] initWithContentsOfFile:plistPath];
    for (NSString *name in data) {
        NSLog(@"module %@ loaded", name);
    }
}

- (void)removeAllModules {
    [_modules removeAllObjects];
}

- (void)RemoveModuleByName:(NSString *)moduleName {
    [_modules removeObjectForKey:moduleName];
}

- (void)addModule:(Module *)module {
    [_modules setObject:module forKey:module.name];
}

- (Module *)getModuleByName:(NSString *)moduleName {
    return [_modules valueForKey:moduleName];
}

- (NSDictionary *)allModules {
    return self.modules;
}

@end
