//
//  RMDetailViewController.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import UIKit

class RMCharacterDetailViewController: UIViewController {
    private let viewModel: RMCharacterDetailViewViewModel

    init(viewModel:RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsupported")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        
    
//        self.tabBarController?.tabBar.isHidden = true
        view.backgroundColor = .systemBackground

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        self.tabBarController?.tabBar.isHidden = false
//    }


}
