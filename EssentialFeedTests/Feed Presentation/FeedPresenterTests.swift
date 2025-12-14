//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Bryan Yong on 14/12/2025.
//

import Foundation
import XCTest

final class FeedPresenter {
    init(view: Any) {
        
    }
}

class FeedPresenterTests: XCTestCase {

    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()

        _ = FeedPresenter(view: view)

        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }

    // MARK: - Helper

    private class ViewSpy {
        let messages = [Any]()
    }
}
