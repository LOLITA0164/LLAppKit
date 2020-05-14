//
//  LLAppInfo.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLAppInfo : NSObject
/// 所有数据
-(NSDictionary*)dictionary;
/// 包名
-(NSString*)name;
/// app 版本
-(NSString*)version;
/// 包标识
-(NSString*)bundleIdentifier;
@end


