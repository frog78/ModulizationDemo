//
//  MBViewController.h
//  ModuleB
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBP.h"

@interface MBViewController : UIViewController

@property (weak, nonatomic)id<ModuleBP>mbvDelegate;

@end
