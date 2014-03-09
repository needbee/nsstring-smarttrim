//
//  NSString+SmartTrim.h
//  Scriptive
//
//  Created by Josh Justice on 11/9/13.
//  Copyright (c) 2013 Scriptive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SmartTrim)

-(NSString *)smartTrimToLength:(int)length withPrefix:(NSString *)prefix suffix:(NSString *)suffix;

@end
