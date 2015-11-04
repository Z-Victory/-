//
//  ViewController.m
//  question1
//
//  Created by Taurus on 15/11/3.
//  Copyright (c) 2015年 Zimo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //假设🐔是i，🐰是y
    //x+y=35;
    //2x+4y=94;
    for (int i=0; i<35; i++) {
        int a=2*i+(35-i)*4;
        NSLog(@"%i",a);
        if (a==94) {
            NSLog(@"🐔有%i\n🐰有%i",i,35-i);
        }

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
