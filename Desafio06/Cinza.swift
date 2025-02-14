//
//  Cinza.swift
//  Desafio05-02
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.fill")
        }

    }
}

#Preview {
    Cinza()
}
