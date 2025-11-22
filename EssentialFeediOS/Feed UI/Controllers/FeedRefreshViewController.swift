//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 13/11/2025.
//

import Foundation
import UIKit

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    private(set) lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        return loadView(view)
    }()

    private let loadFeed: () -> Void

    init(loadFeed: @escaping () -> Void) {
        self.loadFeed = loadFeed
    }

    @objc func refresh() {
        loadFeed()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }

    private func loadView(_ view: UIRefreshControl) -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
