//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Bryan Yong on 02/12/2025.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
