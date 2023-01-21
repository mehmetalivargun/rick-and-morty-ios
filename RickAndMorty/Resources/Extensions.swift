//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...){
        views.forEach { view in
            addSubview(view)
        }
    }
}
