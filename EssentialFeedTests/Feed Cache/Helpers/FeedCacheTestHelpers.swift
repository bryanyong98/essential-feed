//
//  FeedCacheTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Bryan Yong on 05/10/2025.
//

import Foundation
import EssentialFeed

func uniqueImage() -> FeedImage {
    let url = URL(string: "http://any-url.com")!
    return .init(id: UUID(), description: "any", location: "any", url: url)
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
    let models = [uniqueImage(), uniqueImage()]
    let local = models.map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url) }
    return (models, local)
}

extension Date {

    private var feedCacheMaxAgeInDays: Int {
        return 7
    }

    func minusFeedCacheMaxAge() -> Date {
        return adding(days: -feedCacheMaxAgeInDays)
    }
    
    private func adding(days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }

    func adding(seconds: TimeInterval) -> Date {
        return self + seconds
    }
}
