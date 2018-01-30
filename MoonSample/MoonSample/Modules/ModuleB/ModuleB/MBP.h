//
//  MBP.h
//  ModuleB
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#ifndef MBP_h
#define MBP_h

@protocol ModuleBP <NSObject>

- (void)jumpTo:(NSString *)moduleName controller:(UIViewController *)vc;

@end

#endif /* MBP_h */
