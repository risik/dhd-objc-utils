//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import "NSNumber+DHDUtils.h"


@implementation NSNumber (DHDUtils)

+ (BOOL)dhd_isNumber:(NSNumber *)object
{
    if (object == nil) {
        return NO;
    }
    if (object == (id)[NSNull null]) {
        return NO;
    }
    if (![object isKindOfClass:[NSNumber class]]) {
        return NO;
    }
    return YES;
}

@end