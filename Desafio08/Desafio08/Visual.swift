//
//  Visual.swift
//  Desafio08
//
//  Created by Turma01-8 on 12/02/25.
//

import SwiftUI

struct Visual: View {
    
    @State var lista: Song
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            VStack {
                AsyncImage(url: URL(string: lista.capa)) {image in image
                        .image?.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .clipped()
                } // Fechamento do AysncImage
                Text(lista.name)
                    .foregroundStyle(.white)
                    .font(.title)
                Text(lista.artist)
                    .foregroundStyle(.white)
                
                HStack {
                    Image(systemName: "shuffle")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(systemName: "backward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))

                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                    Image(systemName: "forward.end.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 40))

                    Image(systemName: "repeat")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                    
                } // Fechamento do HStack
                .padding(.top, 100)
                
            } // Fechamento do VStack
            .padding()
            
        } // Fechamento do ZStack
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Visual(lista: Song(id: 1, name: "Musica 1", artist: "LinkPark", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg"))
}
