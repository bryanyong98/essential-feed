//
//  FeedViewModel.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 17/11/2025.
//

import EssentialFeed
import Foundation

final class FeedViewModel: NSObject {
    private let feedLoader: FeedLoader

    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }

    private enum State {
        case pending
        case loading
    }

    private var state = State.pending {
        didSet { onChange?(self) }
    }

    var onChange: ((FeedViewModel) -> Void)?
    var onFeedLoad: (([FeedImage]) -> Void)?
    
    private(set) var isLoading: Bool = false {
        didSet {
            onChange?(self)
        }
    }

    func loadFeed() {
        isLoading = true
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onFeedLoad?(feed)
            }
            self?.isLoading = false
        }
    }
}
