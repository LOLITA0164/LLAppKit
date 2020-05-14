//
//  LLAppInfo.m
//  LLAppKit_Example
//
//  Created by LL on 2020/5/13.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "LLAppInfo.h"

@implementation LLAppInfo
-(NSDictionary*)dictionary{
    return NSBundle.mainBundle.infoDictionary;
}
-(NSString*)name{
    return self.dictionary[@"CFBundleDisplayName"];
}
-(NSString*)version{
    return self.dictionary[@"CFBundleShortVersionString"];
}
-(NSString*)bundleIdentifier{
    return self.dictionary[@"CFBundleIdentifier"];
}
@end

