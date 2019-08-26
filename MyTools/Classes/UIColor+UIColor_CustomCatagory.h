//
//  UIColor+UIColor_CustomCatagory.h
//  Basic
//
//  Created by zhang on 13-10-23.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UIColor_CustomCatagory)

/**
 *  获取自定义的颜色，主要就是不必每次都除以255.0
 *
 *  @param red   红色
 *  @param green 绿色
 *  @param blue  蓝色
 *  @param alpha 透明度
 *
 *  @return 返回颜色值
 */
+(UIColor *) customColorWithRed:(float) red green:(float) green blue:(float) blue alpha:(float) alpha;


+ (UIColor *)customColorNameWithString:(NSString *)stringToConvert;
@end

