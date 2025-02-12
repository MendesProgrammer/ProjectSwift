//
//  Azul.swift
//  Desafio05-02
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack {
            Color
                .blue
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.fill")
        }

    }
}

#Preview {
    Azul()
}
