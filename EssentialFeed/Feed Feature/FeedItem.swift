//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 17/09/2025.
//

import Foundation

public struct FeedImage: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let url: URL

    public init(id: UUID, description: String?, location: String?, url: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.url = url
    }
}

// this leaks implementation details into higher level abstraction modules
// if the API contract changes, this may unnecessarily breaks the other modules that depends on this FeedFeature
//extension FeedItem: Decodable {
//    private enum CodingKeys: String, CodingKey {
//        case id
//        case description
//        case location
//        case url = "image"
//    }
//}
