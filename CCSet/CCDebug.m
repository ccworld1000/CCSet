//
//  CCDebug.m
//  CCDebug
//
//  Created by dengyouhua on 17/3/22.
//  Copyright © 2017年 cc | ccworld1000@gmail.com. All rights reserved.
//  github: https://github.com/ccworld1000/CCDebug
//

#import "CCDebug.h"
#import <Availability.h>

#ifndef CCDebug_h
#define CCDebug_h

// Configurable
#define CCDebugWarningColorRGB @"255,69,0"      // orange
#define CCDebugErrorColorRGB   @"255,0,0"       // red
#define CCDebugNetHintColorRGB @"255,0,255"     // magenta
#define CCDebugNormalColorRGB  @"0,0,255"       // blue
#define CCDebugTimerColorRGB   @"125,38,205"    // Purple3

// CCDebug Log Prompt identification | Configurable

#define CCDebugHint            @"CCDebug Log"
#define CCDebugError           @"CCDebug Error"
#define CCDebugNormal          @"CCDebug Normal"
#define CCDebugWarning         @"CCDebug Warning"
#define CCDebugTimer           @"CCDebug Timer"

#define CCDebugWebURL          @"CCDebug Web URL"

#define CCDebugProtocolURL     @"CCDebug Protocol URL"

NSString const * CCDebugNetHint =  @"networking log";

#endif /* CCDebug_h */

NSString *const CCDebugColorsEscape = @"\033[fg";

void CCDebugLog(NSString * prefix, NSString * message) {
    [CCDebug debugLog:prefix message:message];
}

void CCDebugPrint(NSString * message) {
    CCDebugLog(CCDebugNormal, message);
}

void CCDebugErrorPrint(NSString * message) {
    [CCDebug debugLog:CCDebugError message:message];
}

void CCDebugWarningPrint(NSString * message) {
    [CCDebug debugLog:CCDebugWarning message:message];
}

void CCDebugTimerPrint(NSString * message) {
    [CCDebug debugLog:CCDebugTimer message:message];
}

void CCDebugWebURLPrint(NSString * message) {
    [CCDebug debugLog:CCDebugWebURL message:message];
}

void CCDebugProtocolURLPrint(NSString * message) {
    [CCDebug debugLog:CCDebugProtocolURL message:message];
}

void CCSay (NSString *prefix, NSString *message) {
    CCDebugLog(prefix, message);
}

void say (NSString *message) {
    CCDebugPrint(message);
}

void error (NSString *message) {
    CCDebugErrorPrint(message);
}

void warning (NSString *message) {
    CCDebugWarningPrint(message);
}

static BOOL CCDebugALLLogSwitch = NO;
static BOOL CCDebugColorRGBEnable = NO;         // Color control switch off = 0 |  on = 1 | or NO | YES
static BOOL CCDebugEnableNSLogPrefix = NO;      // Whether to open the NSLog prefix  off = 0 |  on = 1 | or NO | YES


static NSString * CCDebugWarningCustomColors     = nil;
static NSString * CCDebugErrorCustomColors       = nil;
static NSString * CCDebugNetHintCustomColors     = nil;
static NSString * CCDebugNormalCustomColors      = nil;
static NSString * CCDebugTimerCustomColors       = nil;

@implementation CCDebug

+ (NSString *) colorWith:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    return [NSString stringWithFormat:@"%lu,%lu,%lu", (unsigned long)red, (unsigned long)green, (unsigned long)blue];
}

+ (void) debugLogSwitch:(BOOL)showLog {
    if (CCDebugALLLogSwitch != showLog) {
        CCDebugALLLogSwitch = showLog;
    }
}

+ (void) colorRGBEnable:(BOOL)showColor {
    CCDebugColorRGBEnable = showColor;
}

+ (void) enableNSLogPrefix:(BOOL)on {
    CCDebugEnableNSLogPrefix = on;
}

+ (void) warningCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (CCDebugALLLogSwitch) {
        CCDebugWarningCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) errorCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (CCDebugALLLogSwitch) {
        CCDebugErrorCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) netHintCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (CCDebugALLLogSwitch) {
        CCDebugNetHintCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) normalCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (CCDebugALLLogSwitch) {
        CCDebugNormalCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) timerCustomColors:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue {
    if (CCDebugALLLogSwitch) {
        CCDebugTimerCustomColors = [self colorWith:red green:green blue:blue];
    }
}

+ (void) debugLog:(NSString *)prefix message:(NSString *)message {
    if (!prefix || !message) {
        return;
    }

    if (CCDebugALLLogSwitch) {
        NSString * m = @"";
        if (prefix && message) {
            m = [NSString stringWithFormat:@"[%@][%@] %@", CCDebugHint, prefix, message];
        } else if (prefix && !message) {
            m = [NSString stringWithFormat:@"[%@][%@]", CCDebugHint, prefix];
        } else {
            m = [NSString stringWithFormat:@"[%@] %@", CCDebugHint, message];
        }

        NSString * color = nil;
        if (CCDebugColorRGBEnable && prefix) {
            if ([prefix isEqualToString:CCDebugNormal]) {
                color = CCDebugNormalCustomColors ? CCDebugNormalCustomColors : CCDebugNormalColorRGB;
            } else if ([prefix isEqualToString:CCDebugWarning]) {
                color = CCDebugWarningCustomColors ? CCDebugWarningCustomColors : CCDebugWarningColorRGB;
            } else if ([prefix isEqualToString:CCDebugError]) {
                color = CCDebugErrorCustomColors ? CCDebugErrorCustomColors : CCDebugErrorColorRGB;
            } else if ([prefix hasPrefix:@"networking"]) {
                color = CCDebugNormalCustomColors ? CCDebugNormalCustomColors : CCDebugNetHintColorRGB;
            } else if ([prefix isEqualToString:CCDebugTimer]) {
                color = CCDebugErrorCustomColors ? CCDebugTimerCustomColors : CCDebugTimerColorRGB;
            }
        }

        if (color && message) {
            m = [NSString stringWithFormat:@"%@%@;%@", CCDebugColorsEscape, color, m];
        }

        if (CCDebugEnableNSLogPrefix) {
            NSLog(@"%@", m);
        } else {
            const char * ms = [m UTF8String];
            printf("%s\n", ms);
        }
    }
} /* debugLog */

@end

