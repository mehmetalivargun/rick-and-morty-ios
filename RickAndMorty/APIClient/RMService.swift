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
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// -request: Request instance
    ///  -type : Expected response tyoe
    ///  -completion: Callback with data or error
    
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ){
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data , error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            do {
                let json = try JSONDecoder().decode(type.self, from: data)
                completion(.success(json))
            }catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    private func request(from rmRequest:RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil}
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
