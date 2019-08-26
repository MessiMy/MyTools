//
//  NSString+StringJudge.m
//  OCSSStore
//
//  Created by MacMiniKangChe on 2018/10/31.
//  Copyright © 2018年 Messei. All rights reserved.
//

#import "NSString+StringJudge.h"

@implementation NSString (StringJudge)

- (BOOL)isEmpty{
    if (self == nil || self.length < 1) {
        return YES;
    }
    return NO;
}

- (BOOL)isPhoneNum{
    NSString *regex = @"^((13[0-9])|(14[5,7,9])|(15[0-3,5-9])|(166)|(17[0,1,3,5-8])|(18[0-9])|(199)|(198))\\d{8}$";
    return [self baseWithString:regex];
}

- (BOOL)isMoneyFormmart{
    NSString *regex = @"^[0-9]+(.[0-9]{2})?$";
    return [self baseWithString:regex];
}

- (BOOL)isIDCard{
    NSString *regex = @"\\d{14}[[0-9],0-9xX]";
    return [self baseWithString:regex];
}

- (BOOL)baseWithString:(NSString *)regex{
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

+ (BOOL)isStringContainsEmoji:(NSString *)string {
    __block BOOL returnValue = NO;
    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
                               options:NSStringEnumerationByComposedCharacterSequences
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop)
     {
         const unichar hs = [substring characterAtIndex:0];
         if (0xd800 <= hs && hs <= 0xdbff) {
             if (substring.length > 1) {
                 const unichar ls = [substring characterAtIndex:1];
                 const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                 if (0x1d000 <= uc && uc <= 0x1f77f) {
                     returnValue = YES;
                 }
             }
         } else if (substring.length > 1) {
             const unichar ls = [substring characterAtIndex:1];
             if (ls == 0x20e3) {
                 returnValue = YES;
             }
         } else {
             if (0x2100 <= hs && hs <= 0x27ff) {
                 returnValue = YES;
             } else if (0x2B05 <= hs && hs <= 0x2b07) {
                 returnValue = YES;
             } else if (0x2934 <= hs && hs <= 0x2935) {
                 returnValue = YES;
             } else if (0x3297 <= hs && hs <= 0x3299) {
                 returnValue = YES;
             } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                 returnValue = YES;
             }
         }
     }];
    return returnValue;
}


@end
