//
//  CCFont+Simple.h
//  CCFont
//
//  Created by dengyouhua on 16/10/19.
//  Copyright © 2016年 cc ccworld1000@gmail.com. All rights reserved.
//

#import "CCUtilities.h"

#pragma clang diagnostic push

@interface CCFont (Simple)

/**
 *  fontWithName
 *
 *  @param fontName fontName description
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (CCFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;

/**
 *  systemFontOfSize
 *
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (CCFont *)systemFontOfSize:(CGFloat)fontSize;

/**
 *  boldSystemFontOfSize
 *
 *  @param fontSize fontSize description
 *
 *  @return return value description
 */
+ (CCFont *)boldSystemFontOfSize:(CGFloat)fontSize;


@end

#pragma clang diagnostic pop
