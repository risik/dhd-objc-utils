//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DHDUtils)

+ (BOOL)dhd_isDictionary:(id)object;

+ (BOOL)dhd_isEmpty:(id)object;

@end