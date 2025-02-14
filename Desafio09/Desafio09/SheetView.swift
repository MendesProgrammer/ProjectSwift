//
//  SheetView.swift
//  Desafio09
//
//  Created by Turma01-8 on 14/02/25.
//

import SwiftUI

struct SheetView: View {
//    @Environment (\.dismiss) var dismiss
    @Binding var recebe: Location
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                Image(recebe.foto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                
                Text(recebe.nome)
                    .font(.system(size:50))
                    .foregroundStyle(.brown)
                    .bold()
                Spacer()
                
                ScrollView {
                    Text(recebe.descricao)
                        .font(.system(size: 20))
                        .padding()
                }.frame(width: .infinity, height: .infinity)
                    .background(.brown).cornerRadius(20)
                    
            } // Fechamento do VState
        } // Fechamento do ZStack
        
    }
}
#Preview {
    SheetView(recebe: .constant(Location(nome: "Cristo Redentor", foto: "ima1", descricao: "O Cristo Redentor é um dos monumentos mais emblemáticos do Brasil e um dos maiores símbolos do Rio de Janeiro. Localizado no topo do Morro do Corcovado, o Cristo Redentor foi inaugurado em 12 de outubro de 1931 e é uma estátua de Jesus Cristo com os braços abertos, medindo.", latitude: -22.952054, longitude: -43.210713)))
}
