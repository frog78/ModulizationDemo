//
//  Module.h
//  MGJDemo
//
//  Created by admin on 16/3/21.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MoonRouter.h"

@interface Module : NSObject

@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIViewController *vc;
@property (strong, nonatomic) MoonRouter *router;

- (instancetype)initWithName:(NSString *)name;

- (void)jumpWithController:(UIViewController *)vc;

@end
