//
//  ViewController.m
//  LGPro
//
//  Created by 李礼光 on 2017/8/19.
//  Copyright © 2017年 LG. All rights reserved.
//

#import "ViewController.h"
#import "MiniViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    label.center = self.view.center;
    label.text = @"Master Branch";
    label.font = [UIFont systemFontOfSize:23];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self presentViewController:[[MiniViewController alloc]init] animated:YES completion:nil];

}

@end
