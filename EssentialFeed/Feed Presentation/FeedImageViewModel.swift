//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 17/11/2025.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    public var hasLocation: Bool {
        location != nil
    }
}
