//
//  ContentView.swift
//  Desafio03
//
//  Created by Turma01-8 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(content: {
            HStack(content: {
                Image(.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 190, height: 100,alignment: .trailing)
            })
            .padding()
            VStack() {
                HStack() {
                    Text("2")
                        .frame(width: 10, height: 10, alignment: .center)
                }
                HStack() {
                    Text("post")
                        .frame(width: 40, height: 10, alignment: .center)
                }
            }
            
            VStack() {
                HStack() {
                    Text("12k")
                        .frame(width: 40, height: 10, alignment: .center)
                }
                HStack() {
                    Text("Seguidores")
                        .frame(width: 90, height: 10, alignment: .center)
                }
            }
            
            
            VStack() {
                HStack() {
                    Text("2k")
                        .frame(width: 20, height: 10, alignment: .center)
                }
                HStack() {
                    Text("Seguindo")
                        .frame(width: 70, height: 10, alignment: .center)
                }
            }
        })
    
}

#Preview {
    ContentView()
}
