//
//  NSBezierPath+CCSet.h
//  CCSet macOS
//
//  Created by CC on 2022/8/18.
//  Copyright © 2022 CC (deng you hua | cworld1000@gmail.com). All rights reserved.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBezierPath (CCSet)

- (void)appendPath:(NSBezierPath *)bezierPath;

@end

NS_ASSUME_NONNULL_END
