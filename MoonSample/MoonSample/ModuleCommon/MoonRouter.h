//
//  MoonRouter.h
//  MoonSample
//
//  Created by qiliu on 2018/1/26.
//  Copyright © 2018年 frog78. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^completeHandler)();

@interface MoonRouter : NSObject

+ (instancetype)shareInstance;

- (void)presentViewController:(UIViewController *)vc toVC:(NSString *)vcName comp:(completeHandler)comp;

- (void)pushViewController:(UINavigationController *)nav toVC:(NSString *)vcName;

@end
