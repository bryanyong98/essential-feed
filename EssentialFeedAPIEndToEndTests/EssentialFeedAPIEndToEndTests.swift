//
//  EssentialFeedAPIEndToEndTests.swift
//  EssentialFeedAPIEndToEndTests
//
//  Created by Bryan Yong on 21/09/2025.
//

import XCTest
import EssentialFeed

// this test runs slower
// run this before merging branch back to the trunk
// automate this test as part of the ci pipeline.
final class EssentialFeedAPIEndToEndTests: XCTestCase {

    func test_endToEndServerGETFeedResult_matchesFixedTestAccountData() {
        let testServerURL = URL(string: "https://essentialdeveloper.com/feed-case-study/test-api/feed")!
        let client = URLSessionHTTPClient()
        let loader = RemoteFeedLoader(client: client, url: testServerURL)
        trackForMemoryLeaks(client)
        trackForMemoryLeaks(loader)

        let exp = expectation(description: "Wait for load completion")

        var receivedResult: LoadFeedResult?
        loader.load { result in
            receivedResult = result
            exp.fulfill()
        }

        wait(for: [exp], timeout: 15.0) // allow for network slowness 

        switch receivedResult {
        case let .success(items)?:
            XCTAssertEqual(items.count, 8, "Expected 8 items in test account")
        case let .failure(error)?:
            XCTFail("Expected successful feed result, got \(error) instead")
        default:
            XCTFail("Expected successful feed result, got no result instead")
        }
    }
}
