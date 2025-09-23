//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 17/09/2025.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
