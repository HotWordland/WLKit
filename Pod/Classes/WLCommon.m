//
//  WLCommon.m
//  WLFrameWorksUIRun
//
//  Created by Ronaldinho on 15/6/10.
//  Copyright (c) 2015年 HotWordLand. All rights reserved.
//

#import "WLCommon.h"

@implementation WLCommon
+ (NSURL *)localDocumentsDirectory {
    NSURL *documentsURL = [[self sharedApplicationGroupContainer] URLByAppendingPathComponent:@"Documents" isDirectory:YES];
    
    NSError *error;
    // This will return `YES` for success if the directory is successfully created, or already exists.
    BOOL success = [[NSFileManager defaultManager] createDirectoryAtURL:documentsURL withIntermediateDirectories:YES attributes:nil error:&error];
    
    if (success) {
        return documentsURL;
    }
    else {
        NSLog(@"The shared application group documents directory doesn't exist and could not be created. Error: %@", error.localizedDescription);
        abort();
    }
}
+ (NSURL *)sharedApplicationGroupContainer {
    NSURL *containerURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.HotWordLand.T2tour"];
    
    NSAssert(containerURL != nil, @"The shared application group container is unavailable. Check your entitlements and provisioning profiles for this target. Details on proper setup can be found in the PDFs referenced from the README.");
    
    return containerURL;
}
+ (CGFloat)widthForText:(NSString *)text height:(CGFloat)height font:(UIFont *)thefont
{
    NSDictionary *attributes = @{NSFontAttributeName:thefont};
    CGSize aSize = [text boundingRectWithSize:CGSizeMake(MAXFLOAT,height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:Nil].size;
    return aSize.width;
}

+ (CGFloat)heightForText:(NSString *)text width:(CGFloat)width font:(UIFont *)thefont
{
    NSDictionary *attributes = @{NSFontAttributeName:thefont};
    CGSize aSize = [text boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:Nil].size;
    return aSize.height;
}
+(void)shakeView:(UIView *)view RepeatCount:(int)count{
    
    CAKeyframeAnimation *kfa = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.x"];
    
    CGFloat s = 16;
    
    kfa.values = @[@(-s),@(0),@(s),@(0),@(-s),@(0),@(s),@(0)];
    
    //时长
    kfa.duration = 0.1f;
    
    //重复
    kfa.repeatCount = count;
    
    //移除
    kfa.removedOnCompletion = YES;
    
    [view.layer addAnimation:kfa forKey:@"shake"];
}
+(void)bounceView:(UIView *)view
{
    UIImageView *touchView = (UIImageView *)view;
    [UIView animateWithDuration:0.6 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:10 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        [touchView setTransform:CGAffineTransformMakeScale(1.5, 1.5)];
        
    } completion:^(BOOL finished) {
        
    }];
    [UIView animateWithDuration:0.3 delay:0.7 usingSpringWithDamping:0.6 initialSpringVelocity:5 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [touchView setTransform:CGAffineTransformIdentity];
        
    } completion:^(BOOL finished) {
        
    }];
    
}
@end
