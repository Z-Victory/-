//
//  NSString+RemoveSpace.m
//  question2
//
//  Created by Taurus on 15/11/3.
//  Copyright (c) 2015年 Zimo. All rights reserved.
//

#import "NSString+RemoveSpace.h"

@implementation NSString (RemoveSpace)
-(void)removeSpace:(NSString *)string
{
    //method one
    NSArray *subStringArray=[string componentsSeparatedByString:@" "];
    NSMutableString *completeStr=[NSMutableString string];
    for (NSString *s in subStringArray) {
       [completeStr appendString:s];
    }
    NSLog(@"方法一移除空格以后的字符串：%@",completeStr);
    
    
    //method two
    NSMutableString *removeString=[NSMutableString string];
    for (int i=0; i<(int)string.length; i++) {
        NSRange range=NSMakeRange(i, 1);
        //NSLog(@"%@",[string substringWithRange:range]);
        NSString *sub=[string substringWithRange:range];
        if (![sub isEqualToString:@" "]) {
            [removeString appendString:sub];
        }
    }
    NSLog(@"方法二移除空格以后的字符串：%@",removeString);
}
@end
