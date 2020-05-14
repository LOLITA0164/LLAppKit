# LLAppKit

[![CI Status](https://img.shields.io/travis/LOLITA0164/LLAppKit.svg?style=flat)](https://travis-ci.org/LOLITA0164/LLAppKit)
[![Version](https://img.shields.io/cocoapods/v/LLAppKit.svg?style=flat)](https://cocoapods.org/pods/LLAppKit)
[![License](https://img.shields.io/cocoapods/l/LLAppKit.svg?style=flat)](https://cocoapods.org/pods/LLAppKit)
[![Platform](https://img.shields.io/cocoapods/p/LLAppKit.svg?style=flat)](https://cocoapods.org/pods/LLAppKit)


## Installation

LLAppKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LLAppKit'
```

## Example

该项目提供了一种通用的存储数据的存储标准，并统一了入口。

可扩展性、可维护性高。

```
AppKit:
       user:用户信息
       settings:设置
             color/……
       app:应用数据
       apis:接口
       notifications:通知
       keys:偏好keys
 
存储型=>属性、非存储型=>方法
```

如上述，定义了一个简单的入口模型，存储用户信息、应用配置信息、接口信息等等，在实际开发过程中，你可以将自定义的数据模型通过分类绑定到指定入口处，对于库中已有的配置，你通过分类添加数据即可。


将数据分为两种类型，一种是非存储型数据，一种是存储型数据，前者我们通过方法返回的形式硬编码写入，例如接口数据、通知等，后者是存储型数据，我们通过绑定属性的形式添加这类数据，例如模块codes。

示例一：添加主题色

```
// 通过分类，添加主题色到颜色入口
@interface LLColor (TEST)
/// 主题色
-(UIColor*)theme;
@end
@implementation LLColor (TEST)
-(UIColor*)theme{
    return self.rgb(12,123,123);
}
@end

// 使用
// 自定义颜色
self.view.backgroundColor = LLAppKit.share.settings.colors.theme;
```


示例二：添加存储型数据

```
@interface LLUserInfo (TEST)
/// 存储型数据
@property (strong, nonatomic) NSString* name;
@end
@implementation LLUserInfo (TEST)
-(NSString *)name{
    NSString* n = objc_getAssociatedObject(self, _cmd);
    return n;
}
-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end

// 使用
LLAppKit.share.user.name = @"靓仔";
NSLog(@"用户真实名为：%@",LLAppKit.share.user.name);
```

示例三：自定义入口

```
// 步骤一：创建数据入口模型
@interface LLCodes : NSObject
/// 首页code
-(NSString*)home;
@end
@implementation LLCodes
/// 首页code
-(NSString*)home{
    return @"homeCode";
}
@end

// 步骤二：绑定到指定入口
@interface LLAppKit (TEST)
/// 作为非存储型数据
-(LLCodes*)codes;
@end
@implementation LLAppKit (TEST)
/// 作为非存储型数据
-(LLCodes*)codes{
    return LLCodes.new;
}
@end

// 步骤三：使用新的数据
// 自定义入口
NSString* homeCode = LLAppKit.share.codes.home;
NSLog(@"首页code为：%@", homeCode);
```


## Author

LOLITA0164, 476512340@qq.com

## License

LLAppKit is available under the MIT license. See the LICENSE file for more info.
