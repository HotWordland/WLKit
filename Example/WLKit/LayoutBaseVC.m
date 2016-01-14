//
//  LayoutBaseVC.m
//  WLKit
//
//  Created by 情热大陆 on 16/1/14.
//  Copyright © 2016年 巫龙. All rights reserved.
//

#import "LayoutBaseVC.h"

@interface LayoutBaseVC ()

@end

@implementation LayoutBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
