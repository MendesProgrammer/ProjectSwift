//
//  ContentView.swift
//  Desafio05-02
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            Azul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            Cinza()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            Listas()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    
        
    }
}

#Preview {
    ContentView()
}
