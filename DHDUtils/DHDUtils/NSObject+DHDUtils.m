//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import "NSObject+DHDUtils.h"


@implementation NSObject (DHDUtils)

+ (BOOL)dhd_isNil:(id)object
{
    if (object == nil) {
        return YES;
    }
    if (object == (id)[NSNull null]) {
        return YES;
    }
    return NO;
}

@end