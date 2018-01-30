//
//  ModuleBIM.h
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import "Module.h"
#import <ModuleB/ModuleB.h>

@interface ModuleBWrapper : Module<ModuleBP>

@property (nonatomic, strong)MBViewController *mb;


@end
