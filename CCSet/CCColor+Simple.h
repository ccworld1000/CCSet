//
//  CCColor+Simple.h
//  CCFontiOS
//
//  Created by dengyouhua on 16/10/20.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#import "CCUtilities.h"

/**
 *  CCColorRGBWithAlpha  | r,g,b [0 - 255] alpha [0 - 1] [C Style]
 *
 *  @param r     r description
 *  @param g     g description
 *  @param b     b description
 *  @param alpha alpha description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT CCColor * CCColorRGBWithAlpha (NSInteger r, NSInteger g, NSInteger b, CGFloat alpha);

/**
 *  CCColorRGB | r,g,b [0 - 255] [C Style]
 *
 *  @param r r description
 *  @param g g description
 *  @param b b description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT CCColor * CCColorRGB (NSInteger r, NSInteger g, NSInteger b);

/**
 *  CCColorWithHexString | [C Style]
 *
 *  @param hexString hexString description
 *
 *  @return return value description
 */
FOUNDATION_EXPORT CCColor * CCColorWithHexString (NSString *hexString);



@interface CCColor (Simple)

/**
 *  colorWithHexString
 *
 *  @param hexString hexString description
 *
 *  @return return value description
 */
+ (CCColor *)colorWithHexString: (NSString *)hexString;

/**
 *  colorWithHexString alpha
 *
 *  @param hexString hexString description
 *  @param alpha     alpha description
 *
 *  @return return value description
 */
+ (CCColor *)colorWithHexString: (NSString *)hexString alpha:(CGFloat)alpha;

+ (CCColor *)blackColor;
+ (CCColor *)darkGrayColor;
+ (CCColor *)lightGrayColor;
+ (CCColor *)whiteColor;
+ (CCColor *)grayColor;
+ (CCColor *)redColor;
+ (CCColor *)greenColor;
+ (CCColor *)blueColor;
+ (CCColor *)cyanColor;
+ (CCColor *)yellowColor;
+ (CCColor *)magentaColor;
+ (CCColor *)orangeColor;
+ (CCColor *)purpleColor;
+ (CCColor *)brownColor;
+ (CCColor *)clearColor;

+ (CCColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
+ (CCColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
+ (CCColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (CCColor *)colorWithCGColor:(CGColorRef)cgColor;

- (CCColor *)colorWithAlphaComponent:(CGFloat)alpha;

- (void)set;
- (void)setFill;
- (void)setStroke;

@end
