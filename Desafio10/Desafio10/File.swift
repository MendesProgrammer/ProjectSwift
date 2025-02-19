//
//  File.swift
//  Desafio10
//
//  Created by Turma01-8 on 17/02/25.
//

import Foundation

//      "id": 0,
//      "name": "Zero-Tails",
//      "images": [
//        "https://static.wikia.nocookie.net/naruto/images/8/87/Zero_tails.png"
//      ],
//      "debut": {
//        "novel": "Naruto Shippūden the Movie: Bonds",
//        "movie": "Naruto Shippūden the Movie: Bonds",
//        "appearsIn": "Novel, Movie"
//      },
//      "jutsu": [
//        "Shadow Arms"
//      ],
//      "personal": {
//        "species": "Leech"
//      },
//      "uniqueTraits": [
//        "Detects negative emotions",
//        "Feeds on darkness in a beings heart to create dark chakra"
//      ]

struct character : Decodable, Identifiable {
    var id : Int
    var name : String?
    var images : [String]?
    var jutsu : [String]?
    var uniqueTraits : [String]?
    var personal : Pers?
}

struct API : Decodable {
    var characters : [character]
}


struct Pers : Decodable{
    var species : String?
}
