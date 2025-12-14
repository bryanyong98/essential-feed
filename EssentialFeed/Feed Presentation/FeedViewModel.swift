//
//  FeedViewModel.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 14/12/2025.
//

import Foundation

// MARK: - FeedView

public protocol FeedView {
    func display(_ viewModel: FeedViewModel)
}

public struct FeedViewModel {
    public let feed: [FeedImage]
}
