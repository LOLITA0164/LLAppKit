//
//  LLUserInfo+TEST.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/14.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLUserInfo+TEST.h"
#import <objc/runtime.h>

@implementation LLUserInfo (TEST)

-(NSString *)name{
    NSString* n = objc_getAssociatedObject(self, _cmd);
    return n;
}
-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


-(NSString *)defaultName{
    return @"小明";
}

@end
