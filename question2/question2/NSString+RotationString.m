//
//  NSString+RotationString.m
//  question2
//
//  Created by Taurus on 15/11/3.
//  Copyright (c) 2015年 Zimo. All rights reserved.
//

#import "NSString+RotationString.h"

@implementation NSString (RotationString)
-(void)rotationString:(NSString *)string
{
    NSMutableString *rotationString=[NSMutableString string];
    for (int i=(int)string.length; i>0; i--) {
        NSRange range=NSMakeRange(i-1, 1);
        //NSLog(@"%@",[string substringWithRange:range]);
        NSString *sub=[string substringWithRange:range];
        [rotationString appendString:sub];
    }
    NSLog(@"旋转后的字符串：%@",rotationString);
}
@end
