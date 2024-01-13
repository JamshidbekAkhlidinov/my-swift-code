//
//  Encoder & Decoder.swift
//  basic swift
//
//  Created by ustadev.uz on 13/01/24.
//

import Foundation


struct Person:Codable {

    var id:Int

    var name:String
    
    
    enum CodingKeys: String, CodingKey {
        case id = "user_id"
        case name = "user_name"
    }

}

//topshiriq
struct Spaceship:Codable{
    var name:String
    var crew:CrewMember
}

struct CrewMember:Codable{
    var name:String
    var rase:String
}
