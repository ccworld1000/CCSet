//
//  NSBezierPath+CCSet.m
//  CCSet macOS
//
//  Created by CC on 2022/8/18.
//  Copyright © 2022 CC (deng you hua | cworld1000@gmail.com). All rights reserved.
//

#import "NSBezierPath+CCSet.h"

@implementation NSBezierPath (CCSet)

- (void)appendPath:(NSBezierPath *)bezierPath {
    if (!bezierPath) {
        return;
    }
    
    [self appendBezierPath:bezierPath];
}

@end
