//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSObject+DHDUtils.h"

@interface DHDObjectUtilsTests : XCTestCase

@end

@implementation DHDObjectUtilsTests

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

- (void)testObjectIsNil
{
    XCTAssertTrue([NSObject dhd_isNil:nil]);
    XCTAssertTrue([NSObject dhd_isNil:[NSNull null]]);
    XCTAssertFalse([NSObject dhd_isNil:@"aa"]);
    XCTAssertFalse([NSObject dhd_isNil:@1]);
}

@end
