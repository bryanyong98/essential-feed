//
//  MainQueueDispatchDecorator.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 08/12/2025.
//

import Foundation
import EssentialFeed

private final class MainQueueDispatchDecorator<T> {
    private let decoratee: T

    init(decoratee: T) {
        self.decoratee = decoratee
    }

    func dispatch(completion: @escaping () -> Void) {
        guard Thread.isMainThread else {
            return DispatchQueue.main.async(execute: completion)
        }
        completion()
    }
}

extension MainQueueDispatchDecorator: FeedLoader where T == FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void) {
        decoratee.load { [weak self] result in
            self?.dispatch {
                completion(result)
            }
        }
    }
}
