//
//  Tela3.swift
//  Desafio07
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Tela3: View {
    var body: some View {
        ZStack {
            Color.azul.ignoresSafeArea()
            VStack {
                Text("Nome: Tiago")
                    .foregroundStyle(.white)
                Text("Sobrenome: Pereira")
                    .foregroundStyle(.white)
            } // Fechamento da VStack
            .padding()
            .background(.pink)
            .cornerRadius(20)
            .frame(width: 250, height: 50)
            
        } // Fechamento do ZStack
    }
}

#Preview {
    Tela3()
}
