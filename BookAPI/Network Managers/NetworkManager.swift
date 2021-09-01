//
//  NetworkManager.swift
//  BookAPI
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

final class NetworkManager {
    
    static let apiKey = "AIzaSyBafyaem2svouaUyTOIHB_ruLa1sOBwfcg"
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
   static let baseURL = "https://www.googleapis.com/books/v1/volumes?q="
//    "flowers+inauthor:keyes&key=yourAPIKey"
    
    //MARK: - Functions
    
    static func fetchBooks(searchTerm: String, completion: @escaping (Result<[BookItems], BookError>) -> Void) {
        
        let baseURL = URL(string: "https://www.googleapis.com/books/v1/volumes?q=")

        guard let baseURL = baseURL else {return completion(.failure(.invalidURL))}
        let searchURL = baseURL.appendingPathComponent(searchTerm)
        let finalURl = searchURL.appendingPathComponent(":keys&key=\(apiKey)")
        print(finalURl)
        
        URLSession.shared.dataTask(with: finalURl) { data, response, error in
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            
            if let response = response as? HTTPURLResponse {
                print("BOOK STATUS CODE: \(response.statusCode)")
            }
            
            guard let data = data else {return completion(.failure(.noData))}
            
            do {
                let book = try JSONDecoder().decode(BookItems.self, from: data)
                completion(.success([book]))
            } catch {
                completion(.failure(.thrownError(error)))
            }
            
        }.resume()
    }
    
    
    
    
}
//End of class
