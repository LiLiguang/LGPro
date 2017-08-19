
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
    self.view.backgroundColor = [UIColor blueColor];

    UILabel *title = [[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x - 50, 50, 100, 44)];
    
    title.text = @"第一次修改";
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
    
    [centerButton addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)showAlert {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"MiniWork" message:@"Hello world" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"Cancle" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertVC addAction:cancleAction];
    [alertVC addAction:confirmAction];
    [self presentViewController:alertVC animated:YES completion:nil];
}


@end
