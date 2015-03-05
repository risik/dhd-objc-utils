//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSNumber+DHDUtils.h"

@interface DHDNumberUtilsTests : XCTestCase

@end

@implementation DHDNumberUtilsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIsNumber
{
    XCTAssertFalse([NSNumber dhd_isNumber:nil]);
    XCTAssertFalse([NSNumber dhd_isNumber:(NSNumber *) [NSNull null]]);
    XCTAssertFalse([NSNumber dhd_isNumber:(NSNumber *) @""]);
    XCTAssertFalse([NSNumber dhd_isNumber:(NSNumber *) @"aa"]);
    XCTAssertTrue([NSNumber dhd_isNumber:@1]);
    XCTAssertTrue([NSNumber dhd_isNumber:@YES]);
}

@end
