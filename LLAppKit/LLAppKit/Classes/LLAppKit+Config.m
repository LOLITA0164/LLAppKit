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
/// 通过运行时将变量进行绑定
-(LLUserInfo *)user{
    LLUserInfo* u = objc_getAssociatedObject(self, _cmd);
    if (u==nil) { // 如果不存在，则创建实例并进行绑定
        u = LLUserInfo.new;
        objc_setAssociatedObject(self, @selector(user), u, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return u;
}
-(void)setUser:(LLUserInfo *)user{
    objc_setAssociatedObject(self, @selector(user), user, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
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


