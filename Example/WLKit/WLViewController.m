//
//  WLViewController.m
//  WLKit
//
//  Created by 巫龙 on 01/13/2016.
//  Copyright (c) 2016 巫龙. All rights reserved.
//

#import "WLViewController.h"
@import WLKit;
@interface WLViewController ()

@end

@implementation WLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [WLNetEnigne GET:@"https://api.github.com" parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"%@",responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
