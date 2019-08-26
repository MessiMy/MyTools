//
//  NSString+Attributed.m
//  OCSSStore
//
//  Created by Mavericks on 2018/11/2.
//  Copyright © 2018年 Messei. All rights reserved.
//

#import "NSString+Attributed.h"

@implementation NSString (Attributed)

- (NSAttributedString *)getAttributedWithDefaultStyle:(NSDictionary *)defaultStyle
                                              highStr:(NSString *)highStr
                                         highFontSize:(NSInteger)highFontSize
                                            highColor:(UIColor *)highColor{
    if (self) {
        NSMutableDictionary<NSAttributedStringKey,id> *attributed = [[NSMutableDictionary alloc] init];
        //文字大小
        UIFont *font;
        if (defaultStyle[@"font"]) {
            font = defaultStyle[@"font"];
            [attributed setObject:font forKey:NSFontAttributeName];
        }
        //文字颜色
        UIColor *color;
        if (defaultStyle[@"color"]) {
            color = defaultStyle[@"color"];
            [attributed setObject:color forKey:NSForegroundColorAttributeName];
        }
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self attributes:attributed];
        if (highStr.length > 0) {
            //寻找位置
            NSRange highStrRange = [self rangeOfString:highStr];
            if (highStrRange.location != NSNotFound) {
                [attributedString addAttributes:@{NSFontAttributeName:[UIFont fontWithName:@"PingFangSC-Regular" size:highFontSize]} range:highStrRange];
                [attributedString addAttributes:@{NSForegroundColorAttributeName:highColor} range:highStrRange];
            }
        }
        return attributedString;
    }
    return [[NSAttributedString alloc] initWithString:@""];
}

@end
