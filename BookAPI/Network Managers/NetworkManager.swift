//
//  NetworkManager.swift
//  BookAPI
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

final class NetworkManager {
    
    private let apiKey = "AIzaSyBafyaem2svouaUyTOIHB_ruLa1sOBwfcg"
    
    static let shared = NetworkManager()
    private let cache = NSCache<NSString, UIImage>()
    
    let baseURL = "https://www.googleapis.com/books/v1/volumes?q="
//    "flowers+inauthor:keyes&key=yourAPIKey"
    
    //MARK: - Functions
    
    static func fetchBooks(searchTerm: String, completion: @escaping (Result<[BookItems], BookError>) -> Void) {
        
        let baseURL = URL(string: "https://www.googleapis.com/books/v1/volumes?q=")
//        var searchTermInput = URL(string: "\(searchTerm)")
//        let searchTermURL = baseURL + searchTermInput
//        
//        guard let finalURL = baseURL else {return completion(.failure(.invalidURL))}
//        
//        URLSession.shared.dataTask(with: finalURL) { data, response, error in
//            if let error = error {
//                return completion(.failure(.thrownError(error)))
//            }
//            
//            if let response = response as? HTTPURLResponse {
//                print("BOOK STATUS CODE: \(response.statusCode)")
//            }
//            
//            guard let data = data else {return completion(.failure(.noData))}
//            
//            do {
//                let book = try JSONDecoder().decode(Book.self, from: data)
//                let bookItems = book.items
//                let bookDetails = bookItems.volumeInfo
//            }
//        }
//    }
    
}
//End of class
