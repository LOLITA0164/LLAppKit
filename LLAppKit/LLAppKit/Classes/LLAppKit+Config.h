//
//  LLAppKit+Config.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

/*
 该类通过扩展，给整个应用作配置
 大部分的功能配置都依靠这种思路配置起来
 通常需要你自己创建类似的文件，配置自定义的部分
 */

#import "LLAppKit.h"
#import "LLSettings.h"  // 相关配置
#import "LLAppInfo.h"   // 应用信息
#import "LLAPIs.h"      // 接口
#import "LLUserInfo.h"  // 用户信息
#import "LLNotificationNames.h" // 通知信息
#import "LLUserDefaultKeys.h"   // 偏好设置key

#pragma mark - AppKit 层级入口
/// 存储型=>属性、非存储型=>方法
@interface LLAppKit (Config)
/// 用户信息：这里提供了一个绑定存储类型的实例，实际开发过程中，可以采用类似的思路
@property (strong, nonatomic) LLUserInfo* user;
/// colors:颜色
-(LLSettings*)settings;
/// 应用信息
-(LLAppInfo*)app;
/// 数据接口
-(LLAPIs*)apis;
/// 通知信息
-(LLNotificationNames*)notifications;
/// 偏好设置key
-(LLUserDefaultKeys*)keys;
@end



#pragma mark - Settings 层级入口
@interface LLSettings (Config)
/// hex:十六进制  rgb rand:随即色
-(LLColor*)colors;
@end


