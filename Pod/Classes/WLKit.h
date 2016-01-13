//
//  WLKit.h
//  WLKit
//
//  Created by Ronaldinho on 15/6/10.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for WLKit.
FOUNDATION_EXPORT double WLKitVersionNumber;

//! Project version string for WLKit.
FOUNDATION_EXPORT const unsigned char WLKitVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <WLKit/PublicHeader.h>
#import<WLKit/WLCommon.h>
#import<WLKit/DeviceJudge.h>
#import <WLKit/UIView+Toast.h>
#import <WLKit/NSDictionary+FixNSNull.h>
#import <WLKit/UICatalogWL.h>
#import <WLKit/LYHTTPClient.h>
#import <WLKit/WLNetEnigne.h>
#define ALERT_TOAST_VIEW(CONTENT) [self.view makeToast:CONTENT duration:2.0f position:CSToastPositionCenter];