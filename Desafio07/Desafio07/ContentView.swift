//
//  ContentView.swift
//  Desafio07
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        Button("Voltar"){
            dismiss()
        }
        .frame(width: 100, height: 100)
        .background(.black)
        Text("Nome")
    }
}

struct ContentView: View {
    
    @State private var ShowingSheet = false
    
    var body: some View {
        VStack {
            NavigationStack {
                ZStack {
                    Color
                        .azul
                        .ignoresSafeArea()
                    Image(.maker)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 100)
                        .position(x: 190, y: 100)
                        .shadow(radius: 10)
                    
                    VStack {
                        NavigationLink(destination: Tela1()) {
                            Text("Ir para a primeira tela 1")
                                .frame(width: 200, height: 70)
                                .background(.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10.0)
                        }
                        NavigationLink(destination: Tela2()) {
                            Text("Ir para a segunda tela 2")
                                .frame(width: 200, height: 70)
                                .background(.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10.0)
                        }
                    }
                    Button("Ir para a terceira tela 3"){
                        ShowingSheet.toggle()
                    }
                    .sheet(isPresented: $ShowingSheet, content: {
                        SheetView()
                    })
                    .foregroundColor(.white)
                    .frame(width: 200, height: 65)
                    .background(.pink)
                    .cornerRadius(10.0)
                    .position(x:196, y:495)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
