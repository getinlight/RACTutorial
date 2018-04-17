//
//  NSDictionary+RWLogHelper.m
//  TwitterInstant
//
//  Created by z on 2018/4/17.
//  Copyright © 2018年 Colin Eberhardt. All rights reserved.
//

#import "NSDictionary+RWLogHelper.h"

@implementation NSDictionary (RWLogHelper)

- (NSString *)descriptionWithLocale:(nullable id)locale{
    
    NSString *logString;
    
    @try {
        
        logString=[[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
        
    } @catch (NSException *exception) {
        
        NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
        logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
        
    } @finally {
        
    }
    
    return logString;
}

@end
