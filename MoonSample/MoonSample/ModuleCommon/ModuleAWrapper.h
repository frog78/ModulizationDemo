//
//  ModuleAIM.h
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "Module.h"
#import <ModuleA/ModuleA.h>

@interface ModuleAWrapper : Module<ModuleAP>

@property (nonatomic, strong)MAViewController *ma;


@end
