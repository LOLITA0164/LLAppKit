//
//  LLAppKit.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//



// NSObject
#define CATEGORY_PROPERTY_GET_NS(type, property) - (type*) property { type* obj = objc_getAssociatedObject(self, _cmd); if (obj==nil) { obj = type.new; objc_setAssociatedObject(self, _cmd, obj, OBJC_ASSOCIATION_RETAIN_NONATOMIC); } return obj; }

#define CATEGORY_PROPERTY_SET_NS(type, property, setter) - (void) setter (type*) property { objc_setAssociatedObject(self, _cmd, property, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

#define CATEGORY_PROPERTY_GET_SET_NS(type, property, setter) CATEGORY_PROPERTY_GET_NS(type, property) CATEGORY_PROPERTY_SET_NS(type, property, setter)


// NSNumber
#define CATEGORY_PROPERTY_GET_NSNUMBER_PRIMITIVE(type, property, valueSelector) - (type) property { return [objc_getAssociatedObject(self, @selector(property)) valueSelector]; }

#define CATEGORY_PROPERTY_SET_NSNUMBER_PRIMITIVE(type, property, setter, numberSelector) - (void) setter (type) property { objc_setAssociatedObject(self, @selector(property), [NSNumber numberSelector: property], OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

// UInt
#define CATEGORY_PROPERTY_GET_UINT(property) CATEGORY_PROPERTY_GET_NSNUMBER_PRIMITIVE(unsigned int, property, unsignedIntValue)

#define CATEGORY_PROPERTY_SET_UINT(property, setter) CATEGORY_PROPERTY_SET_NSNUMBER_PRIMITIVE(unsigned int, property, setter, numberWithUnsignedInt)

#define CATEGORY_PROPERTY_GET_SET_UINT(property, setter) CATEGORY_PROPERTY_GET_UINT(property) CATEGORY_PROPERTY_SET_UINT(property, setter)

// Int
#define CATEGORY_PROPERTY_GET_INT(type, property) CATEGORY_PROPERTY_GET_NSNUMBER_PRIMITIVE(type, property, intValue)

#define CATEGORY_PROPERTY_SET_INT(type, property, setter) CATEGORY_PROPERTY_SET_NSNUMBER_PRIMITIVE(type, property, setter, numberWithInt)

#define CATEGORY_PROPERTY_GET_SET_INT(type, property, setter) CATEGORY_PROPERTY_GET_INT(type, property) CATEGORY_PROPERTY_SET_INT(type, property, setter)

// BOOL
#define CATEGORY_PROPERTY_GET_BOOL(type, property) CATEGORY_PROPERTY_GET_NSNUMBER_PRIMITIVE(type, property, boolValue)

#define CATEGORY_PROPERTY_SET_BOOL(type, property, setter) CATEGORY_PROPERTY_SET_NSNUMBER_PRIMITIVE(type, property, setter, numberWithBool)

#define CATEGORY_PROPERTY_GET_SET_BOOL(type, property, setter) CATEGORY_PROPERTY_GET_INT(type, property) CATEGORY_PROPERTY_SET_INT(type, property, setter)



/*
 该本是应用所有数据入口，仅有一个单例
 相关配置请参考 `LLAppKit+Config.h` 文件
 */

#import <Foundation/Foundation.h>

@interface LLAppKit : NSObject
/// settings:设置
/// app:应用数据
/// apis:接口
/// notifications:通知
/// user:用户信息
/// keys:偏好keys
+(instancetype)share;
@end
