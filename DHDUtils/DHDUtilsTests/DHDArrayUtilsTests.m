//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+DHDUtils.h"

@interface DHDArrayUtilsTests : XCTestCase

@end

@implementation DHDArrayUtilsTests

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

- (void)testArrayIsEmpty
{
    XCTAssertTrue([NSArray dhd_isEmpty:nil]);
    XCTAssertTrue([NSArray dhd_isEmpty:(NSArray *) [NSNull null]]);
    XCTAssertTrue([NSArray dhd_isEmpty:@[]]);
    XCTAssertFalse([NSArray dhd_isEmpty:@[@1]]);
    XCTAssertFalse([NSArray dhd_isEmpty:@[@""]]);
}

@end
