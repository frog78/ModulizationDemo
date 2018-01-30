//
//  ModuleManager.h
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Module.h"

@interface ModuleManager : NSObject

@property (nonatomic, strong)NSMutableDictionary *modules;

+ (instancetype)shareInstance;

- (void)loadModlues;

- (void)removeAllModules;

- (void)RemoveModuleByName:(NSString *)moduleName;

- (void)addModule:(Module *)module;

- (Module *)getModuleByName:(NSString *)moduleName;

- (NSDictionary *)allModules;

@end
