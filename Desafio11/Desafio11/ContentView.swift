//
//  ContentView.swift
//  Desafio11
//
//  Created by Turma01-8 on 19/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var obj = ViewPessoa()
    
    var body: some View {
        VStack {
            ForEach(obj.pess, id: \.self){pes in
                Text(pes.nome)
                Text("\(pes.idade)")
            }
        }.onAppear(){
            obj.fetch()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
