
//
//  MiniViewController.m
//  LGPro
//
//  Created by 李礼光 on 2017/8/19.
//  Copyright © 2017年 LG. All rights reserved.
//

#import "MiniViewController.h"

@interface MiniViewController ()

@end

@implementation MiniViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x - 50, 50, 100, 44)];
    
    title.text = @"Mini work";
    title.textColor = [UIColor blackColor];
    title.font = [UIFont systemFontOfSize:19];
    [self.view addSubview:title];
    
    UIButton *centerButton = [UIButton buttonWithType: UIButtonTypeCustom];
    centerButton.frame = CGRectMake(0, 0, 120, 44);
    centerButton.center = self.view.center;
    [centerButton setBackgroundColor:[UIColor redColor]];
    [centerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [centerButton setTitle:@"centerBtn" forState:UIControlStateNormal];
    centerButton.layer.cornerRadius = 5;
    [self.view addSubview:centerButton];
    
}



@end
