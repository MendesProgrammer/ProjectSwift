//
//  ContentView.swift
//  Desafio08
//
//  Created by Turma01-8 on 12/02/25.
//

import SwiftUI

struct Song: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    var ArrayMusicas = [
        Song(id: 1, name: "Mary On A Cross", artist: "Ghost", capa: "https://c-fa.cdn.smule.com/smule-gg-s-sf-bck1/arr/c3/a3/98a8980a-080e-47fd-b67c-580f8f8f2efd.jpg"),
        Song(id: 2, name: "Always", artist: "Bon Jovi", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRjP6o9jYHgjGgJyzwO6VL0J1GY8f6r52RCAeXkuKwlZdS77WxtfsF2xmQmW-S_R0P6jQ&usqp=CAU"),
        Song(id: 3, name: "The Emptiness Machine", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg"),
        Song(id: 4, name: "Locked Out The Heaven", artist: "Bruno Mars", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYciLrat8EMeD7vhiNFaMglerHtikuWolHpRun64xmnONvSnROGolpzqmjxlhRzfYjoaY&usqp=CAU"),
        Song(id: 5, name: "Numb", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg"),
        Song(id: 6, name: "In The End", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg")
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                VStack {
                    
                    AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg")) {image in image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 180)
                            .cornerRadius(10.0)
                        // Fechamento do AysncImage
                    } placeholder: {
                        Color.gray
                            .frame(width: 200, height: 200)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 70)
                    
                    Text("HackFM")
                        .font(.system(size:36))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                    HStack {
                        AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/81iC+O0ec2L._AC_SX679_.jpg")) {image in image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .cornerRadius(10.0)
                            // Fechamento do AysncImage
                        } placeholder: {
                            Color.gray
                                .frame(width: 10, height: 10)
                        }
                    
                        
                        Text("HackaSong")
                            .foregroundColor(.white)
                    } // Fechamento do HStack
                    .frame(maxWidth: .infinity, alignment: .leading)

                    ScrollView {
                        VStack (spacing: 20) {
                            ForEach(ArrayMusicas) { e in
                                NavigationLink(destination: Visual(lista: e)){
                                    HStack {
                                        AsyncImage(url: URL(string: e.capa)) {image in image
                                                .image?.resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 70)
                                                .clipped()
                                        } // Fechamento do AysncImage
                                        VStack {
                                            Text(e.name)
                                                .foregroundStyle(.white)
                                                .font(.title3)
                                                .frame( maxWidth: .infinity,alignment: .leading)
                                            Text(e.artist)
                                                .foregroundStyle(.white)
                                                .frame( maxWidth: .infinity,alignment: .leading)
                                        } // Fechamento do VStack
                                        
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    } // Fechamento do HStack dentro do foreach
                                    
                                } // Fechamento do NavigationLink
                                
                            } // Fechamento do ForEach
                            
                        } // Fechamento do VStack
                        Text("Sugeridos")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 20) {
                                ForEach(ArrayMusicas) { musica in
                                    NavigationLink(destination: Visual(lista: musica)){
                                        
                                        VStack {
                                            AsyncImage(url: URL(string: musica.capa)) {image in image
                                                    .image?.resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                                    .clipped()
                                            } // Fechamento do AysncImage
                                            Text(musica.artist)
                                                .foregroundColor(.white)
                                        } // Fechamento do VStack
                                    } // Fechamento do NavigationLink
                                } // Fechamento do ForEach
                            } // Fechamento do HStack
                        } // Fechamento do ScrollView
                        .frame(width: 300)

                        
                    }// Fechamento do ScrollView
                    .frame(height: 300)
                    
                    // Onde estava o codigo
                    
                } // Fachamento do VStack
                
            } // Fechamento do ZStack
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        } // Fechamento do NavigationStack
        .accentColor(.white)

    }
}

#Preview {
    ContentView()
}
