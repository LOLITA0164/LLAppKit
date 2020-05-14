//
//  LLUserInfo+TEST.h
//  LLAppKit_Example
//
//  Created by LL on 2020/5/14.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

/*
 本例测试一个存储型的数据
 */

#import "LLUserInfo.h"

@interface LLUserInfo (TEST)

/// 存储型数据
@property (strong, nonatomic) NSString* name;

/// 非存储型数据
-(NSString*)defaultName;

@end


