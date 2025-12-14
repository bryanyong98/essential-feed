//
//  FeedLoadingViewModel.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 14/12/2025.
//

import Foundation

// MARK: - FeedLoadingView

public protocol FeedLoadingView {
    func display(_ viewModel: FeedLoadingViewModel)
}

public struct FeedLoadingViewModel {
    public let isLoading: Bool
}
