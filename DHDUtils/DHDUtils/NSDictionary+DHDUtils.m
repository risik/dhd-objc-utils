//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import "NSDictionary+DHDUtils.h"


@implementation NSDictionary (DHDUtils)

+ (BOOL)dhd_isDictionary:(id)object
{
    if (object == nil) {
        return NO;
    }
    if (object == (id)[NSNull null]) {
        return NO;
    }
    if (![object isKindOfClass:[NSDictionary class]]) {
        return NO;
    }
    return YES;
}

+ (BOOL)dhd_isEmpty:(id)object
{
    if (![NSDictionary dhd_isDictionary:object]) {
        return YES;
    }

    NSDictionary *dict = object;
    if (dict.count == 0) {
        return YES;
    }

    return NO;
}


@end