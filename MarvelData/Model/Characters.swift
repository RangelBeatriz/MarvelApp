//
//  Characters.swift
//  MarvelData
//
//  Created by user191307 on 5/21/21.
//

import Foundation

struct MarvelAPIData: Codable {

    let data: CharacterData
   
    enum CodingKeys: String, CodingKey {
        case data = "data"
    }
}


struct CharacterData: Codable {
    let results: [Character]
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}


struct Character: Codable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case thumbnail = "thumbnail"
    }

}


struct Thumbnail: Codable {
    let path: String
    let ext: String

    
    var url: String{
        return path + "." + ext
    }
    
    enum CodingKeys: String, CodingKey{
        case path
        case ext = "extension"
    }

}
