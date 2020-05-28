//
//  LLViewController.m
//  LLAppKit
//
//  Created by LOLITA0164 on 05/13/2020.
//  Copyright (c) 2020 LOLITA0164. All rights reserved.
//

#import "LLViewController.h"

#import "TESTHeader.h"      // 自定义扩展功能
#import "LLAppKitHeader.h"  // 库自带的功能

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 自定义颜色
    self.view.backgroundColor = LLAppKit.share.settings.colors.theme;
    
    // 库类提供的数据
    NSString* appName = LLAppKit.share.app.name;
    NSLog(@"应用名称为：%@", appName);
    
    // 自定义接口类
    NSString* homeString = LLAppKit.share.apis.homeUrlString;
    NSLog(@"首页接口为：%@", homeString);
    
    // 测试存储型数据
    NSString* defaultName = LLAppKit.share.user.defaultName;
    LLAppKit.share.user.name = @"靓仔";
    NSLog(@"用户默认名为：%@",defaultName);
    NSLog(@"用户真实名为：%@",LLAppKit.share.user.name);

    // 自定义入口
    NSString* homeCode = LLAppKit.share.codes.home;
    NSLog(@"首页code为：%@", homeCode);
    
    
    NSInteger count = 0;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"count = %ld", (long)count);
    });
      
    for (int i = 0; i < 10; i++) {
        count++;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
