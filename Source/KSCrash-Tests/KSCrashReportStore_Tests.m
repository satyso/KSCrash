//
//  KSCrashReportStore_Tests.m
//
//  Created by Karl Stenerud on 2012-02-05.
//
//  Copyright (c) 2012 Karl Stenerud. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall remain in place
// in this source code.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//


#import "FileBasedTestCase.h"
#import "XCTestCase+KSCrash.h"

#import "KSCrashReportStore.h"


#define REPORT_PREFIX @"CrashReport-KSCrashTest"
//
//#define REPORT_BADPOINTER @"CrashReport-KSCrashTest-BadPointer.json"
//#define REPORT_NSEXCEPTION @"CrashReport-KSCrashTest-NSException.json"

@interface KSCrashReportStore (Tests)

@end


@interface KSCrashReportStore_Tests : FileBasedTestCase @end

@implementation KSCrashReportStore_Tests

- (void) setUp
{
    [super setUp];
    [self createTempReportsAtPath:self.tempPath prefix:REPORT_PREFIX];
}

- (KSCrashReportStore*) store
{
    return [KSCrashReportStore storeWithPath:self.tempPath];
}

- (BOOL) reportExists:(NSString*) reportName
{
    NSFileManager* fm = [NSFileManager defaultManager];
    return [fm fileExistsAtPath:[self.tempPath stringByAppendingPathComponent:reportName]];
}
/* TODO
- (void) testReportNames
{
    KSCrashReportStore* store = [self store];
    
    NSArray* names = [store reportNames];
    XCTAssertEqual([names count], 2u,@"");
    XCTAssertTrue([names containsObject:REPORT_BADPOINTER], @"");
    XCTAssertTrue([names containsObject:REPORT_NSEXCEPTION], @"");
}

- (void) testReportLoad
{
    KSCrashReportStore* store = [self store];
    NSDictionary* report = [store reportNamed:REPORT_BADPOINTER];
    XCTAssertNotNil(report, @"");
    report = [store reportNamed:REPORT_NSEXCEPTION];
    XCTAssertNotNil(report, @"");
}

- (void) testReportDelete
{
    KSCrashReportStore* store = [self store];
    
    XCTAssertTrue([self reportExists:REPORT_BADPOINTER], @"");
    [store deleteReportNamed:REPORT_BADPOINTER];
    XCTAssertFalse([self reportExists:REPORT_BADPOINTER], @"");
    
    XCTAssertTrue([self reportExists:REPORT_NSEXCEPTION], @"");
    [store deleteReportNamed:REPORT_NSEXCEPTION];
    XCTAssertFalse([self reportExists:REPORT_NSEXCEPTION], @"");
}

- (void) testReportDeleteAll
{
    KSCrashReportStore* store = [self store];
    
    XCTAssertTrue([self reportExists:REPORT_BADPOINTER], @"");
    XCTAssertTrue([self reportExists:REPORT_NSEXCEPTION], @"");
    [store deleteAllReports];
    XCTAssertFalse([self reportExists:REPORT_BADPOINTER], @"");
    XCTAssertFalse([self reportExists:REPORT_NSEXCEPTION], @"");
}
*/
@end
