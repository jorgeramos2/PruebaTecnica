//
//  Movie.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.

import Foundation

struct MovieData: Decodable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey{
        case movies = "results"
    }
}
struct Movie: Decodable {
    let id: Int?
    let title: String?
    let overview : String?
    let image : String?
    let voteAverage : Double?
    let voteCount : Int?
    let releaseDate : String?
    
    private enum CodingKeys: String, CodingKey
    {
        case id, title,overview
        case image = "poster_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case releaseDate = "release_date"
    }
}
 

