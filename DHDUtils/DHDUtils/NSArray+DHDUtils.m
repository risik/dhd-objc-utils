//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import "NSArray+DHDUtils.h"
#import "NSObject+DHDUtils.h"


@implementation NSArray (DHDUtils)

+ (BOOL)dhd_isEmpty:(NSArray *)object
{
    if ([NSObject dhd_isNil:object]) {
        return YES;
    }
    if (![object isKindOfClass:[NSArray class]]) {
        return YES;
    }
    NSArray *array = object;
    if (array.count == 0) {
        return YES;
    }
    return NO;
}


@end