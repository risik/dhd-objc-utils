//
//  DHDUtils.h
//  DHDUtils
//
//  Created by Sergei Borisov on 14/02/15.
//  Copyright (c) 2015 DHD Company. Simplified BSD license.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSDictionary+DHDUtils.h"

@interface DHDDictionaryUtilsTests : XCTestCase

@end

@implementation DHDDictionaryUtilsTests

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

- (void)testIsDictionary
{
    XCTAssertFalse([NSDictionary dhd_isDictionary:nil]);
    XCTAssertFalse([NSDictionary dhd_isDictionary:[NSNull null]]);
    XCTAssertFalse([NSDictionary dhd_isDictionary:@""]);
    XCTAssertFalse([NSDictionary dhd_isDictionary:@"aa"]);
    XCTAssertFalse([NSDictionary dhd_isDictionary:@1]);
    XCTAssertFalse([NSDictionary dhd_isDictionary:@YES]);

    XCTAssertTrue([NSDictionary dhd_isDictionary:@{}]);
    XCTAssertTrue([NSDictionary dhd_isDictionary:@{@"a" : @"b"}]);

    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"b"] = @"a";
    XCTAssertTrue([NSDictionary dhd_isDictionary:dict]);
}

- (void)testIsEmpty
{
    XCTAssertTrue([NSDictionary dhd_isEmpty:nil]);
    XCTAssertTrue([NSDictionary dhd_isEmpty:[NSNull null]]);
    XCTAssertTrue([NSDictionary dhd_isEmpty:@""]);
    XCTAssertTrue([NSDictionary dhd_isEmpty:@"aa"]);
    XCTAssertTrue([NSDictionary dhd_isEmpty:@1]);
    XCTAssertTrue([NSDictionary dhd_isEmpty:@YES]);

    XCTAssertTrue([NSDictionary dhd_isEmpty:@{}]);
    XCTAssertFalse([NSDictionary dhd_isEmpty:@{@"a" : @"b"}]);

    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"b"] = @"a";
    XCTAssertFalse([NSDictionary dhd_isEmpty:dict]);
}

@end
