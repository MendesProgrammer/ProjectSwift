//
//  ViewModel.swift
//  Desafio10
//
//  Created by Turma01-8 on 17/02/25.
//

import Foundation

class ViewCharacter : ObservableObject {
    
    @Published var caracter : [character] = []
    
    func fetch(){
        var url = "https://narutodb.xyz/api/character"
        
        var task = URLSession.shared.dataTask(with: URL(string: url)!){ data, _, error in
            do{
                self.caracter = try JSONDecoder().decode(API.self, from: data!).characters
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
