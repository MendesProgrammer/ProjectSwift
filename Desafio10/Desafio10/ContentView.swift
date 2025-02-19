//
//  ContentView.swift
//  Desafio10
//
//  Created by Turma01-8 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var Charct = ViewCharacter()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        
                        ForEach(Charct.caracter){cm in
                            //if(cm.jutsu != nil){
                            //
                            //}
                            NavigationLink(destination: SwiftUIView(user: cm)){
                                HStack {
                                    AsyncImage(url: URL(string: cm.images?.first ?? "photo.artframe")) {image in image
                                            .resizable()
                                            //.aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                            .clipShape(Circle())
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                    
                                    VStack {
                                        Text(cm.name!)
                                            .font(.title2)
                                            .foregroundStyle(.white)
                                    } // Fechamento do VStack
                                } // Fechamento do HStack
                            }
                            
                        } // Fechamento do ForEach
                    } // ScrollView
                }
                .onAppear(){
                    Charct.fetch()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
