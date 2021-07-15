//
//  LLSettings.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLSettings.h"

@implementation LLSettings
@end



#pragma mark - 颜色入口
@implementation LLColor
/// 十六进制颜色
-(UIColor* (^_Nullable)(NSInteger))hex{
    return ^UIColor* (NSInteger rgbValue) {
        return [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
    };
}
/// RGB颜色
-(UIColor* (^_Nullable)(CGFloat, CGFloat, CGFloat))rgb{
    return ^id(CGFloat r, CGFloat g, CGFloat b) {
        return [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1];
    };
}
/// RGBA颜色
-(UIColor* (^_Nullable)(CGFloat, CGFloat, CGFloat, CGFloat))rgba{
    return ^id(CGFloat r, CGFloat g, CGFloat b, CGFloat a) {
        return [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a];
    };
}
/// 随机色
-(UIColor*)rand{
    return self.rgb(arc4random_uniform(255),arc4random_uniform(255),arc4random_uniform(255));
}
@end



#pragma mark - 字体入口
@implementation LLFont
@end


#pragma mark - 字号入口
@implementation LLFontSize
@end


