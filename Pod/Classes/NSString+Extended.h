//
//  NSString+Extended.h
//  WLFrameWorksUIRun
//
//  Created by 情热大陆 on 15/10/11.
//  Copyright © 2015年 HotWordLand. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extended)
///分割字符
- (NSString *)SeparateFromString:(NSString *)fromString ToString:(NSString *)toString;
///转Date
+(NSDate *)convertDateFromString:(NSString *)stringDate;
//是否存在此字符串
-(BOOL)isHaveThisString:(NSString *)str;
@end
