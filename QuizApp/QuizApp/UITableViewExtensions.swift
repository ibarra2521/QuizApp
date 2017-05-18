//
//  UITableViewExtensions.swift
//  QuizApp
//
//  Created by Nivardo Ibarra Florencio on 5/18/17.
//  Copyright © 2017 nivardoibarra.com. All rights reserved.
//

import UIKit

extension UITableView {
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(_ type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}
