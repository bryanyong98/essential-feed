//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 13/11/2025.
//

import Foundation
import UIKit

final class FeedRefreshViewController: NSObject {
    private(set) lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        return binded(view)
    }()

    private let viewModel: FeedViewModel

    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }

    @objc func refresh() {
        viewModel.loadFeed()
    }

    private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onChange = { [weak self] viewModel in
            if viewModel.isLoading {
                self?.view.beginRefreshing()
            } else {
                self?.view.endRefreshing()
            }

        }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
