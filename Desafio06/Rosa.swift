//
//  Rosa.swift
//  Desafio05-02
//
//  Created by Turma01-8 on 11/02/25.
//

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack {
            Color
                .pink
                .edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.fill")
        }
    }
}

#Preview {
    Rosa()
}
