//
//  Video.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.
//

import Foundation

struct VideoData: Decodable {
    let videos: [Video]
    
    private enum CodingKeys: String, CodingKey{
        case videos = "results"
    }
}

struct Video: Decodable {
    let key: String?
    let site: String?
    
    
    private enum Map: String, CodingKey
    {
        case key = "key"
        case site = "site"
      
    }
}
 
