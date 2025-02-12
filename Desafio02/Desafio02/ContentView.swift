//
//  ContentView.swift
//  Desafio02
//
//  Created by Turma01-8 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack() {
                Image(.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 200, height: 1000, alignment: .leading)
                    .padding()
                VStack() {
                    Text("HackTruck")
                        .foregroundStyle(Color.red)
                        .frame(width: 190, height: 10, alignment: .center)
                    Text("77 Universidades")
                        .foregroundStyle(Color.blue)
                        .frame(width: 190, height: 30, alignment: .center)
                    Text("5 regioes do Brasil")
                        .foregroundStyle(Color.yellow)
                        .frame(width: 190, height: 10, alignment: .center)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
