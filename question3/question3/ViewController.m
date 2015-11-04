//
//  ViewController.m
//  question3
//
//  Created by Taurus on 15/11/3.
//  Copyright (c) 2015年 Zimo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int lastNum;
    int last_LastNum;
    NSMutableDictionary *mutDic;
    NSMutableArray *mutArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    mutArray =[NSMutableArray array];
    mutDic =[NSMutableDictionary dictionary];
    [mutDic setObject:@"1" forKey:@"last"];
    [mutDic setObject:@"0" forKey:@"last_LastNum"];
    [mutArray addObject:@"0"];
    [mutArray addObject:@"1"];
    for (int i=0; i<1000; i++) {
        int currentNum=[[mutDic objectForKey:@"last"] intValue]+[[mutDic objectForKey:@"last_LastNum"] intValue];
        if (currentNum>0) {
            [mutDic setObject:[mutDic objectForKey:@"last"] forKey:@"last_LastNum"];
            [mutDic setObject:[NSString stringWithFormat:@"%i",currentNum] forKey:@"last"];
            [mutArray addObject:[NSString stringWithFormat:@"%i",currentNum]];
        }else{
            break;
        }
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mutArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellId=@"cell";
    UITableViewCell  *cell=[tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellId];
    }
    if (indexPath.row==0) {
        cell.textLabel.text=@"0";
    }else if(indexPath.row==1){
        cell.textLabel.text=@"1";
        [mutDic setObject:@1 forKey:@"last"];
    }else{
        
        cell.textLabel.text=[NSString stringWithFormat:@"%@",[mutArray objectAtIndex:indexPath.row]];
//        NSLog(@"%@",[mutDic objectForKey:@"last"]);
//        NSLog(@"%@",[mutDic objectForKey:@"last_lastNum"]);
        
    }
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
