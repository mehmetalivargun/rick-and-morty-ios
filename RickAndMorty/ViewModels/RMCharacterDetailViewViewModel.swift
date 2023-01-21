//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel: NSObject {
    private let character: RMCharacter
    
    init(character: RMCharacter){
        self.character = character
    }
    
    public var title: String {
        return self.character.name.uppercased()
    }
}
