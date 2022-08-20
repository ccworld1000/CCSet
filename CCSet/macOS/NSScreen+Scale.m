//
//  NSScreen+Scale.m
//  CCSet macOS
//
//  Created by CC on 2022/8/20.
//  Copyright © 2022 CC (deng you hua | cworld1000@gmail.com). All rights reserved.
//

#import "NSScreen+Scale.h"

@implementation NSScreen (Scale)

-(CGFloat) scale {
    return [NSScreen mainScreen].backingScaleFactor;
}

@end
