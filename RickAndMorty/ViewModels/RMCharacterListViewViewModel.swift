//
//  CharacterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import Foundation
import UIKit

class RMCharacterListViewViewModel: NSObject  {
    
    public func fetchCharacters() {
        RMService.shared.execute(.listOfCharacters, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                let results = model.results
                print(String(describing: model))
                break
            case .failure(let error):
                print(String(describing: error))
            }
    
        }
        
    }
}

extension RMCharacterListViewViewModel: UICollectionViewDataSource , UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RMCharacterCollectionViewCell.cellIdentifier, for: indexPath) as? RMCharacterCollectionViewCell else {
            fatalError("unsupportedcell")
        }
        let viewModel = RMCharacterCollectionViewCellViewModel(characterName: "Rick Sanchez", characterStatus: .alive, characterImageUrl: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
        cell.configure(with: viewModel)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30) / 2
        return CGSize(width: width, height: width * 1.5)
    }
}
