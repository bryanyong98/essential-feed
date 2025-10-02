//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 01/10/2025.
//

import Foundation

// this is an API DTO, aka API feed item.
struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
