//
//  LLAppKit+Config.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLAppKit+Config.h"
#import <objc/runtime.h>

#pragma mark - AppKit 层级入口
@implementation LLAppKit (Config)
CATEGORY_PROPERTY_GET_SET_NS(LLUserInfo, user, setUser:)
CATEGORY_PROPERTY_GET_SET_NS(LLSettings, settings, setSettings:)

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
/// 偏好设置key
-(LLUserDefaultKeys *)keys{
    return LLUserDefaultKeys.new;
}
@end



#pragma mark - Settings 层级入口
@implementation LLSettings (Config)
CATEGORY_PROPERTY_GET_SET_NS(LLColor, colors, setColors:)
CATEGORY_PROPERTY_GET_SET_NS(LLFont, fonts, setFonts:)
CATEGORY_PROPERTY_GET_SET_NS(LLFontSize, sizes, setSizes:)
@end


