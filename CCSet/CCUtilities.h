//
//  CCUtilities.h
//  CCFontiOS
//
//  Created by dengyouhua on 16/10/24.
//  Copyright © 2016年 cc | ccworld1000@gmail.com. All rights reserved.
//

#ifndef CCUtilities_h
#define CCUtilities_h

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
    #import <UIKit/UIKit.h>
    #define CCFont UIFont
    #define CCColor UIColor
    #define CCImage UIImage
#else
    #import <Cocoa/Cocoa.h>
    #define CCFont NSFont
    #define CCColor NSColor
    #define CCImage NSImage
#endif

#import <Foundation/Foundation.h>

#import "CCHalf.h"
#import "CCFont+Simple.h"
#import "CCColor+Simple.h"


#endif /* CCUtilities_h */
