//
//  NSString+Attributed.h
//  OCSSStore
//
//  Created by Mavericks on 2018/11/2.
//  Copyright © 2018年 Messei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Attributed)

- (NSAttributedString *)getAttributedWithDefaultStyle:(NSDictionary *)defaultStyle
                                              highStr:(NSString *)highStr
                                             highFontSize:(NSInteger)highFontSize
                                            highColor:(UIColor *)highColor;

@end
