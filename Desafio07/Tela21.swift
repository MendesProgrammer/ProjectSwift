//
//  Tela21.swift
//  Desafio07
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Tela21: View {
    @State var nome: String = ""
    var body: some View {
        ZStack {
            Color.azul.ignoresSafeArea()
            VStack {
                
                Text("User: \(nome)")
                    .foregroundStyle(.white)
            } // Fechamento do VStack
            
            .padding()
            .frame(width: 200, height: 100)
            .background(.pink)
            .cornerRadius(20)
        } // Fechamento do ZStack
    }
}

#Preview {
    Tela21()
}
