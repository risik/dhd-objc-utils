//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSString+DHDUtils.h"

@interface DHDStringUtilsTests : XCTestCase

@end

@implementation DHDStringUtilsTests

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

- (void)testStringEmpty
{
    XCTAssertTrue([NSString dhd_isEmpty:nil]);
    XCTAssertTrue([NSString dhd_isEmpty:NULL]);
    XCTAssertTrue([NSString dhd_isEmpty:[NSNull null]]);
    XCTAssertTrue([NSString dhd_isEmpty:@""]);
    XCTAssertTrue([NSString dhd_isEmpty:@1]);
    XCTAssertFalse([NSString dhd_isEmpty:@"aa"]);
}

@end
