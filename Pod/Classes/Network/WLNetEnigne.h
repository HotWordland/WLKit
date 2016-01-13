//
//  WLNetEnigne.h
//  WLFrameWorksUIRun
//
//  Created by 情热大陆 on 16/1/13.
//  Copyright © 2016年 HotWordLand. All rights reserved.
//

#import <WLKit/WLKit.h>

@interface WLNetEnigne : LYHTTPClient
/// URLString 应该是全url 上传单个文件
+ (NSURLSessionUploadTask *)upload:(NSString *)URLString filePath:(NSString *)filePath parameters:(id)parameters;
/// 上传文件流
+ (NSURLSessionUploadTask *)upload:(NSString *)URLString data:(NSData *)data parameters:(id)parameters;
@end
