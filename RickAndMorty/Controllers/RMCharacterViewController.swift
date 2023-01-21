//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Characters"
        view.backgroundColor = .systemBackground

        let request = RMRequest(endpoint: .character)
        print(request.url)
        // Do any additional setup after loading the view.
    }
    


}
