//
//  Movie.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.

import Foundation

struct Movie: Decodable {
    let id: Int?
    let originalTitle: String?
    let overview : String?
    let image : String?
    let voteAverage : Int?
    let voteCount : Int?
    
    private enum Map: String, CodingKey
    {
        case id = "id"
        case originalTitle = "title"
        case overview = "overview"
        case image = "image"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
 
struct MovieData: Decodable {
    let movies: Movie
    
    private enum Map: String, CodingKey{
        case movies = "results"
    }
}
