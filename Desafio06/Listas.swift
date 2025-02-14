//
//  Listas.swift
//  Desafio05-02
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Listas: View {
    var body: some View {
        List {
            Section(header: Text("Listas").font(.title)) {
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                }
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                }
                HStack {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
            }
        }
    }
}

#Preview {
    Listas()
}
