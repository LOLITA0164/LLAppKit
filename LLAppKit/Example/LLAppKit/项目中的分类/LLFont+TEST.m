//
//  LLFont+TEST.m
//  LLAppKit_Example
//
//  Created by 骆亮 on 2021/7/15.
//  Copyright © 2021 LOLITA0164. All rights reserved.
//

#import "LLFont+TEST.h"

@implementation LLFont (TEST)

-(UIFont *)normal{
    return [UIFont systemFontOfSize:12];
}

@end



@implementation UIFont (TEST)

-(UIFont *)regular{
    return [UIFont fontWithName:@"PingFangSC-Regular" size:self.pointSize];
}

-(UIFont*)medium{
    return [UIFont fontWithName:@"PingFangSC-Medium" size:self.pointSize];
}

-(UIFont*)bold{
    return [UIFont fontWithName:@"PingFangSC-Semibold" size:self.pointSize];
}

@end
