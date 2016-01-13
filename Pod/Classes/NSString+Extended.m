//
//  NSString+Extended.m
//  WLFrameWorksUIRun
//
//  Created by 情热大陆 on 15/10/11.
//  Copyright © 2015年 HotWordLand. All rights reserved.
//

#import "NSString+Extended.h"

@implementation NSString (Extended)
- (NSString *)SeparateFromString:(NSString *)fromString ToString:(NSString *)toString {
    NSString *selfString = self;
    if (fromString && [selfString rangeOfString:fromString].length) {
        selfString = [selfString substringFromIndex:[selfString rangeOfString:fromString].location + fromString.length];
    }
    if (toString && [selfString rangeOfString:toString].length) {
        selfString = [selfString substringToIndex:[selfString rangeOfString:toString].location];
    }
    
    return selfString;
}
+(NSDate *)convertDateFromString:(NSString *)stringDate {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *dateFromString = [NSDate new];
    dateFromString = [dateFormatter dateFromString:stringDate];
    return dateFromString;
}
-(BOOL)isHaveThisString:(NSString *)str{
    NSRange foundObj=[self rangeOfString:str options:NSCaseInsensitiveSearch];
    if(foundObj.length>0) {
        return YES;
    } else {
        return NO;
    }
}

@end
