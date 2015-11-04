//
//  ViewController.m
//  question2
//
//  Created by Taurus on 15/11/3.
//  Copyright (c) 2015年 Zimo. All rights reserved.
//

#import "ViewController.h"
#import "NSString+RotationString.h"
#import "NSString+RemoveSpace.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *sstring=@"abc";
    NSLog(@"旋转前：%@",sstring);
    [sstring rotationString:sstring];
    NSString *spaceString=@"a b c";
    NSLog(@"移除空格前：%@",spaceString);
    [spaceString removeSpace:spaceString];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
