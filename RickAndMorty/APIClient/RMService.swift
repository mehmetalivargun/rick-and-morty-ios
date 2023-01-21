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
    
    
    /// -request: Request instance
    ///  -type : Expected response tyoe
    ///  -completion: Callback with data or error
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void){
        
    }
}
