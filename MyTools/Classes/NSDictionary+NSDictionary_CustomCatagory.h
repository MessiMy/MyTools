//
//  NSDictionary+NSDictionary_CustomCatagory.h
//  Basic
//
//  Created by zhang on 13-12-5.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NSDictionary_CustomCatagory)

/**
 *  将字典转换为json字符串
 */
-(NSString *) dictToJson;

/**
 *  键值对反转
 *
 *  @return 新的dict
 */
-(NSDictionary *) keysAndValuesReverse;
@end
