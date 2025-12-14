//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 14/12/2025.
//

import Foundation

// MARK: - FeedErrorView

public protocol FeedErrorView {
    func display(_ viewModel: FeedErrorViewModel)
}

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
