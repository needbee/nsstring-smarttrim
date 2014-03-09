//
//  NSString+SmartTrim.m
//  Scriptive
//
//  Created by Josh Justice on 11/9/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import "NSString+SmartTrim.h"

@implementation NSString (SmartTrim)

-(NSString *)smartTrimToLength:(int)length withPrefix:(NSString *)prefix suffix:(NSString *)suffix
{
    NSString *text = self;
    if( prefix.length + self.length + suffix.length > length ) {
        int trimToLength = length-1-prefix.length-suffix.length;
        text = [NSString stringWithFormat:@"%@…",
                [text substringWithRange:NSMakeRange(0, trimToLength)]];
    }
    return [NSString stringWithFormat:@"%@%@%@", prefix, text, suffix];
}

@end
