//
//  LLViewController.m
//  LLAppKit
//
//  Created by LOLITA0164 on 05/13/2020.
//  Copyright (c) 2020 LOLITA0164. All rights reserved.
//

#import "LLViewController.h"

#import "LLAppKitHeader.h" // 库自带的功能
#import "TESTHeader.h"  // 自定义扩展功能

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 主题色
    self.view.backgroundColor = LLAppKit.share.settings.colors.theme;
    
    NSString* appName = LLAppKit.share.app.name;
    
    NSLog(@"应用名称为：%@", appName);
    
    NSString* homeString = LLAppKit.share.apis.homeUrlString;
    
    NSLog(@"首页接口为：%@", homeString);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
