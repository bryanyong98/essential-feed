//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 17/11/2025.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
