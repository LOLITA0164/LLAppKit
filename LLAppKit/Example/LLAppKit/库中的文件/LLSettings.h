//
//  LLSettings.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

/*
 本类存储一些应用的相关设置，可以通过【分类】，添加新的实例和方法
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LLSettings : NSObject
@end


#pragma mark - 颜色入口
/// 可以通过扩展，添加颜色类的
@interface LLColor : NSObject
/// 十六进制颜色
-(UIColor* (^)(NSInteger))hex;
/// RGB颜色
-(UIColor* (^)(CGFloat, CGFloat, CGFloat))rgb;
/// RGBA颜色
-(UIColor* (^)(CGFloat, CGFloat, CGFloat, CGFloat))rgba;
/// 随机色
-(UIColor*)rand;
@end


#pragma mark - 字体入口
/// 可以通过扩展，添加字体
@interface LLFont : NSObject
@end


#pragma mark - 字号入口
/// 可以通过扩展，添加字号
@interface LLFontSize : NSObject
@end

