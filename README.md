# WLKit

[![CI Status](http://img.shields.io/travis/巫龙/WLKit.svg?style=flat)](https://travis-ci.org/巫龙/WLKit)
[![Version](https://img.shields.io/cocoapods/v/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)
[![License](https://img.shields.io/cocoapods/l/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)
[![Platform](https://img.shields.io/cocoapods/p/WLKit.svg?style=flat)](http://cocoapods.org/pods/WLKit)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

# WLFrameWorksUIRun
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
![](https://github.com/HotWordland/WLFrameWorksUIRun/blob/master/shot/layout-1.png)

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
