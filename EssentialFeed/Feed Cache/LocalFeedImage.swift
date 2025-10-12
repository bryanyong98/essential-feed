//
//  LocalFeedItem.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 01/10/2025.
//

// This model should be framework agnostic and should not contain any framework specific details, should the implementation change. e.g realm, core data etc 
import Foundation

public struct LocalFeedImage: Equatable {
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
