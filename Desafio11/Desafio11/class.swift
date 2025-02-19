//
//  class.swift
//  Desafio11
//
//  Created by Turma01-8 on 19/02/25.
//

import Foundation


class ViewPessoa : ObservableObject {
    
    @Published var pess : [pessoa] = []
    
    func fetch(){
        var url = "http://127.0.0.1:1880/ReadMed"
        var task = URLSession.shared.dataTask(with: URL(string: url)!){data, _, error in
            do {
                self.pess = try JSONDecoder().decode([pessoa].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
