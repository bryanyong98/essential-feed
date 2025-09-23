//
//  XCTestCase +MemoryLeak.swift
//  EssentialFeedTests
//
//  Created by Bryan Yong on 21/09/2025.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        // this teardownblock will be executed upon unit test finished
        addTeardownBlock { [weak instance] in
            XCTAssertNil(
                instance,
                "Instance should have been deallocated. Potential memory leak",
                file: file,
                line: line
            )
        }
    }
}
