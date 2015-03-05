//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import "NSString+DHDUtils.h"


@implementation NSString (DHDUtils)

+ (BOOL)dhd_isEmpty:(id)str
{
    if (str == nil) {
        return YES;
    }
    if (str == (id)[NSNull null]) {
        return YES;
    }
    if (![str isKindOfClass:[NSString class]]) {
        return YES;
    }
    if ([str isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

@end