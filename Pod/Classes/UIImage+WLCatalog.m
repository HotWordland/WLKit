//
//  UIImage+WLCatalog.m
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/7/16.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

#import "UIImage+WLCatalog.h"

@implementation UIImage (WLCatalog)
//来自stackoverflow  - Scale the size of CALayer contents
- (UIImage *)scaleToSize:(CGSize)size
{
    // Scalling selected image to targeted size
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(NULL, size.width, size.height, 8, 0, colorSpace, kCGImageAlphaPremultipliedLast);
    CGContextClearRect(context, CGRectMake(0, 0, size.width, size.height));
    
    if (self.imageOrientation == UIImageOrientationRight) {
        CGContextRotateCTM(context, -M_PI_2);
        CGContextTranslateCTM(context, -size.height, 0.0f);
        CGContextDrawImage(context, CGRectMake(0, 0, size.height, size.width), self.CGImage);
    } else {
        CGContextDrawImage(context, CGRectMake(0, 0, size.width, size.height), self.CGImage);
    }
    
    CGImageRef scaledImage=CGBitmapContextCreateImage(context);
    
    CGColorSpaceRelease(colorSpace);
    CGContextRelease(context);
    
    UIImage * image = [UIImage imageWithCGImage: scaledImage];
    CGImageRelease(scaledImage);
    
    return image;
}
@end
