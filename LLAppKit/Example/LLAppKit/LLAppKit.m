//
//  LLAppKit.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLAppKit.h"

@implementation LLAppKit
/// 单例
+(instancetype)share{
    static LLAppKit* _instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:nil] init];
    });
    return _instance;
}
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    return [LLAppKit share];
}
+(instancetype)copyWithZone:(struct _NSZone *)zone {
    return [LLAppKit share];
}
@end
