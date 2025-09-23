//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Bryan Yong on 19/09/2025.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
