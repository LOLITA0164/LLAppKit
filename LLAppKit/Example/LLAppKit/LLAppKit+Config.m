//
//  LLAppKit+Config.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLAppKit+Config.h"


#pragma mark - AppKit 层级入口
@implementation LLAppKit (Config)
/// 应用设置
-(LLSettings*)settings{
    return LLSettings.new;
}
/// 应用信息
-(LLAppInfo*)app{
    return LLAppInfo.new;
}
/// 数据接口
-(LLAPIs*)apis{
    return LLAPIs.new;
}
/// 通知信息
-(LLNotificationNames *)notifications{
    return LLNotificationNames.new;
}
/// 用户信息
-(LLUserInfo*)user{
    return LLUserInfo.new;
}
/// 偏好设置key
-(LLUserDefaultKeys *)keys{
    return LLUserDefaultKeys.new;
}
@end



#pragma mark - Settings 层级入口
@implementation LLSettings (Config)
/// 颜色类型
-(LLColor*)colors{
    return LLColor.new;
}
@end


