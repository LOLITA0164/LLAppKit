//
//  LLAppKit.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

/*
 该本是应用所有数据入口，仅有一个单例
 相关配置请参考 `LLAppKit+Config.h` 文件
 */

#import <Foundation/Foundation.h>
#import "LLUserInfo.h"

@interface LLAppKit : NSObject
/// settings:设置
/// app:应用数据
/// apis:接口
/// notifications:通知
/// user:用户信息
/// keys:偏好keys
+(instancetype)share;
@end

