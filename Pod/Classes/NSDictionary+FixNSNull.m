//
//  NSDictionary+FixNSNull.m
//  CleverPharmaceutical
//
//  Created by Ronaldinho on 15/4/14.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

#import "NSDictionary+FixNSNull.h"

@implementation NSDictionary (FixNSNull)
-(id)objectForKeyFixNSNull:(id)aKey
{
    if ([[self objectForKey:aKey] isKindOfClass:[NSNull class]]) {
        return @"_暂无_";
    }else return [self objectForKey:aKey];
}

@end
