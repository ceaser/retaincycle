//
//  ReferenceToSelfTests.m
//  ReferenceToSelfTests
//
//  Created by Ceaser Larry on 7/31/14.
//
//

#import <XCTest/XCTest.h>

@interface RetainCycleTests : XCTestCase

@end

@implementation RetainCycleTests

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

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
