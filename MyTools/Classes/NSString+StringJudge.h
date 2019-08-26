//
//  NSString+StringJudge.h
//  OCSSStore
//
//  Created by MacMiniKangChe on 2018/10/31.
//  Copyright © 2018年 Messei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (StringJudge)
//判断字符串是否为手机号
- (BOOL)isPhoneNum;

///是否为空
- (BOOL)isEmpty;

/**
 判断是否是两位浮点数
 @return bool
 */
- (BOOL)isMoneyFormmart;

/**
 判断是否是身份证号

 @return bool
 */
- (BOOL)isIDCard;

/**
 是否emoji

 @param string 字符串
 @return bool
 */
+ (BOOL)isStringContainsEmoji:(NSString *)string;

@end
