//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma01-8 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100, alignment: .leading)
                Spacer()
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100, alignment: .trailing)
            }
            VStack() {
                Spacer()
            }
            HStack() {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100, alignment: .leading)
                Spacer()
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100, alignment: .trailing)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
