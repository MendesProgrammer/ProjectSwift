//
//  Tela2.swift
//  Desafio07
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Tela2: View {
    @State private var user: String = ""
    var body: some View {
        ZStack{
            Color.azul.ignoresSafeArea()

            VStack {
                    TextField("Nome", text: $user)
                    .multilineTextAlignment(.center)
                Text("Bem vindo, \(user)")
                    .foregroundStyle(.white)
                NavigationLink(destination: Tela21(nome: user)) {
                    Text("Ir para outra tela")
                        .frame(width: 200, height: 60)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                }
            } // Fechamento do VStack
            .padding()
            .frame(width: 300, height: 300)
            .background(.pink)
            .cornerRadius(20)
        } // Fechamento do ZStack
    }
}

#Preview {
    Tela2()
}
