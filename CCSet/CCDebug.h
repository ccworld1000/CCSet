//
//  CCDebug.h
//  CCDebug
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//  github: https://github.com/ccworld1000/CCDebug
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString const *CCDebugNetHint;

/**
 *  CCDebugLog [C style] | Simplified use
 *
 *  @param prefix  prefix description
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugLog (NSString *prefix, NSString *message);

/**
 *  CCDebugPrint | [C style] | Use default hints
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugPrint (NSString *message);

/**
 *  CCSay [C style] | Simplified use [same as CCDebugLog]
 *
 *  @param prefix  prefix description
 *  @param message message description
 */
FOUNDATION_EXPORT void CCSay (NSString *prefix, NSString *message);

/**
 *  CCDebugErrorPrint| [C style] | Error prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugErrorPrint (NSString *message);

/**
 *  CCDebugWarningPrint | [C style] | Warning prompt
 *
 *  @param message message description
 *
 */
FOUNDATION_EXPORT void CCDebugWarningPrint (NSString *message);

/**
 *  CCDebugTimerPrint | [C style] | Timer prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugTimerPrint (NSString *message);

/**
 *  CCDebugWebURLPrint | [C style] | WebURL prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugWebURLPrint (NSString *message);

/**
 *  CCDebugWebURLPrint | [C style] | ProtocolURL prompt
 *
 *  @param message message description
 */
FOUNDATION_EXPORT void CCDebugProtocolURLPrint (NSString *message);


FOUNDATION_EXPORT void say (NSString *message);     //[same as CCDebugPrint]
FOUNDATION_EXPORT void error (NSString *message);   //[same as CCDebugErrorPrint]
FOUNDATION_EXPORT void warning (NSString *message); //[same as CCDebugWarningPrint]



/**
 * CCDebug : A flexible, lightweight, scalable, customizable log debugging. 【Support macOSX and iOS】.
 * 
 */
@interface CCDebug : NSObject

/*=============================================================================================================*/

/**
 *  debugLogSwitch | control all log switch, default NO, if you want debug, set YES
 *
 *  @param showLog showLog description | YES show , NO do noting.
 */
+ (void) debugLogSwitch : (BOOL) showLog;

/**
 *  colorRGBEnable | [XcodeColors installation] https://github.com/robbiehanson/XcodeColors
 *  screenshot https://github.com/ccworld1000/CCDebug
 *  @param showColor showColor description
 */
+ (void) colorRGBEnable : (BOOL) showColor;

/**
 *  enableNSLogPrefix | Whether to open the NSLog prefix  off = 0 |  on = 1 | or NO | YES
 *
 *  @param on on description
 */
+ (void) enableNSLogPrefix : (BOOL) on;

/*
 * [*]CustomColors only [debugLogSwitch | showLog = YES && colorRGBEnable | showColor = YES ]take effect
 * red, green, blue value = [0 - 255]
 *
 */

/**
 *  warningCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) warningCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  errorCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) errorCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  netHintCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) netHintCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  normalCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) normalCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/**
 *  timerCustomColors
 *
 *  @param red   red description
 *  @param green green description
 *  @param blue  blue description
 */
+ (void) timerCustomColors : (NSUInteger) red green : (NSUInteger) green blue : (NSUInteger) blue;

/*=============================================================================================================*/
    
/**
 *  debugLog [OC style]
 *
 *  @param prefix  prefix description
 *  @param message message description
 */
+ (void) debugLog : (NSString *) prefix message : (NSString *) message;
    
@end

