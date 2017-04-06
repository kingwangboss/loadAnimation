//
//  ViewController.m
//  animation21131
//
//  Created by OneJ on 2017/4/6.
//  Copyright © 2017年 Onej. All rights reserved.
//

#import "ViewController.h"
#import "OJLoadAnimation.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    OJLoadAnimation *load = [[OJLoadAnimation alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-30, [UIScreen mainScreen].bounds.size.height/2-30, 60,60)];
    [self.view addSubview:load];
    [load statAnimation];
    
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [load removeAnimation];
//    });
}


@end
