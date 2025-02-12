//
//  ContentView.swift
//  Desafio04
//
//  Created by Turma01-8 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = "Fulano"
    @State private var showingAlert = false
    var body: some View {
        
        ZStack {
            
                Image(.fundo)
                    .resizable()
                    .frame(width: 700, height: 700)
                    .opacity(0.1)
                
                Image(.logo)
                    .resizable()
                    .frame(width: 200, height: 100)
                    .offset(x: 10, y:3)
                    .shadow(radius: 10)
            
                Image(.truck)
                    .resizable()
                    .frame(width: 200, height: 110)
                    .offset(x: 10, y: 120)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
                TextField("Enter", text: $username)
                    .multilineTextAlignment(.center)
                    .offset(x:10, y:-300)
            
                Text("Bem vindo, \(username)")
                    .font(.title)
                    .offset(x:1, y:-350)
            
                Button("Entrar") {
                    showingAlert = true
                }
                .offset(x:10, y:380)
                .alert(isPresented: $showingAlert, content: {
                    Alert(
                        title: Text("Alerta !"),
                        message: Text("Você irá iniciar o desafio da aula agora")
                    )
                })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
