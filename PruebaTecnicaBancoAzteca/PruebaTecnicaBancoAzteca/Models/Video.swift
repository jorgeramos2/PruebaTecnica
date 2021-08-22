//
//  Video.swift
//  PruebaTecnicaBancoAzteca
//
//  Created by Jorge Ramos on 22/08/21.
//

import Foundation

struct Video: Decodable {
    let key: String?
    let site: String?
    
    
    private enum Map: String, CodingKey
    {
        case key = "key"
        case site = "site"
      
    }
}
 
struct VideoData: Decodable {
    let videos: Video
    
    private enum Map: String, CodingKey{
        case videos = "results"
    }
}
