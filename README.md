# WLKit
[![CI Status](http://img.shields.io/travis/巫龙/WLKit.svg?style=flat)](https://travis-ci.org/巫龙/WLKit)
[![Version](https://img.shields.io/cocoapods/v/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)
[![License](https://img.shields.io/cocoapods/l/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)
[![Platform](https://img.shields.io/cocoapods/p/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)

## Usage
支持cocoapods 在profile里面添加:
```ruby
pod "WLKit"
```
# 2016-07-31 
##更新至0.3.0 增加Depends管理
{
  JSONModel,
  AFNetworking,
  YYKit
}
#To run the example project, clone the repo, and run `pod install` from the Example directory first.

WLKit框架 - 布局 网络请求 一些常用扩展类 不断更新
#布局 - 将一个红色的view 尺寸为100 100 位于视图中心
```Objective-C
- (void)viewDidLoad {
    [super viewDidLoad];
    // 将一个红色的view 尺寸为100 100 位于视图中心
    //初始化View
    UIView *view = [UIView new];
    //添加进父视图
    [self.view addSubview:view];
    //设置背景颜色
    [view setBackgroundColor:[UIColor redColor]];
    /*** 布局核心 ***/
    //准备好view 为view添加autolayout属性
    PREPCONSTRAINTS(view);
    //设置尺寸
    CONSTRAIN_SIZE(view, 100, 100);
    //在父视图居中
    CENTER(view);
    /*** ***/
    
   }

```
# result
![](https://github.com/HotWordland/WLKit/blob/master/Example/shot/layout-1.png)

#网络请求
请求是基于AFNetWork的封装 这个就不多说了 自己选用了一个比较好的封装LYHTTPClient作为扩展
对于每一次请求都可以进行缓存和不缓存(YYCache) 对于一些常见的逻辑
已经足够了
```Objective-C

typedef NS_ENUM(NSUInteger, LYHTTPClientRequestCachePolicy){
    LYHTTPClientReturnCacheDataThenLoad = 0,///< 有缓存就先返回缓存，同步请求数据
    LYHTTPClientReloadIgnoringLocalCacheData, ///< 忽略缓存，重新请求
    LYHTTPClientReturnCacheDataElseLoad,///< 有缓存就用缓存，没有缓存就重新请求(用于数据不变时)
    LYHTTPClientReturnCacheDataDontLoad,///< 有缓存就用缓存，没有缓存就不发请求，当做请求出错处理（用于离线模式）
};

/// 可以自由设置超时时间，缓存方式。
+ (NSURLSessionDataTask *)GET:(NSString *)URLString
                   parameters:(id)parameters
              timeoutInterval:(NSTimeInterval)timeoutInterval
                  cachePolicy:(LYHTTPClientRequestCachePolicy)cachePolicy
                      success:(void (^)(NSURLSessionDataTask *task, id responseObject))success
                      failure:(void (^)(NSURLSessionDataTask *task, NSError *error))failure
                      
```


#继续更新中...

## Requirements

## Installation

WLKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WLKit"
```

## Author

巫龙, 454763196@qq.com

## License

WLKit is available under the MIT license. See the LICENSE file for more info.
