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


        RMService.shared.execute(.listOfCharacters, expecting: RMGetAllCharactersResponse.self) { result in
            switch result{
            case .success(let model):
                print("Modellerim Var")
                print("total" + String(model.info.count.description))
                print("Page Result count" + String(model.info.pages))
                break
            case .failure(let error):
                print(String(describing: error ))
                break
            }
        }
        
        // Do any additional setup after loading the view.
    }
    


}
