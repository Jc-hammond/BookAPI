//
//  BookResponse.swift
//  BookAPI
//
//  Created by Connor Hammond on 8/27/21.
//

import SwiftUI

struct Book: Codable {
    let items: [BookItems]
}

struct BookItems: Codable {
    let volumeInfo: BookDetails
}

struct BookDetails: Codable {
    var title: String
    var authors: [Author]
    var publishedDate: String
    var description: String
    var industryIdentifiers: [Identifiers]
    var pageCount: Int
    var averageRating: Int
    var imageLinks: ImgLinks
    var infoLink: String
}

struct Author: Codable {
    var author: String
}

struct Identifiers: Codable {
    var type: String
    var identifier: String
}

struct ImgLinks: Codable {
    var thumbnail: String
}
//End of struct
