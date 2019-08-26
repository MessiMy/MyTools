//
//  NSDictionary+NSDictionary_CustomCatagory.m
//  Basic
//
//  Created by zhang on 13-12-5.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import "NSDictionary+NSDictionary_CustomCatagory.h"

@implementation NSDictionary (NSDictionary_CustomCatagory)

/**
 *  将字典转换为json字符串
 *
 *  @return json字符串
 */
-(NSString *) dictToJson{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (error) {
//        ToolKit_LogError(error);
        return @"";
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];;
}

-(NSDictionary *) keysAndValuesReverse{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    for (NSString *text in self) {
        [dict setObject:text forKey:[self objectForKey:text]];
    }
    return dict;
}

@end
