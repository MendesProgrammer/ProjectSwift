//
//  File.swift
//  Desafio11
//
//  Created by Turma01-8 on 19/02/25.
//

import Foundation

struct pessoa : Decodable, Hashable {
    var nome: String
    var sobrenome: String
    var idade: Int
}
