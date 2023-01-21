//
//  RMService.swift
//  RickAndMorty
//
//  Created by Mehmet Ali Vargün on 21.01.2023.
//

import Foundation

///// RMService:  Primary API Service object to get data
final class RMService {
    ///  singleton RMService with private construcotre
    static let shared = RMService()
    
    private init() {}
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
