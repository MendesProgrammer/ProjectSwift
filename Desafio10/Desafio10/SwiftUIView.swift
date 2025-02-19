//
//  SwiftUIView.swift
//  Desafio10
//
//  Created by Turma01-8 on 17/02/25.
//

import SwiftUI

struct SheetView: View {
    var obj: [character]
    var tex: String
    var body: some View {
        ZStack {
            Text("\(tex)")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 25))
            .padding()

            ForEach(obj){ a in
                Text("\(a)")
                    .font(.system(size: 20))
                    //.padding()
            }
        }
    }
}

struct SwiftUIView: View {
    
    var user: character
    @State private var showingSheet = false
    @State private var select = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                AsyncImage(url: URL(string: user.images?.first ?? "photo.artframe"))
                    {image in image
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    
                } placeholder: {
                    Color.gray
                }
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .padding()
                Spacer()
                Text(user.name!)
                    .font(.system(size:50))
                    .foregroundStyle(.brown)
                    .bold()

                ScrollView {
                    
                    if(user.jutsu != nil){
                        Button("Jutsu") {
                            select.toggle()
                        }
                        .sheet(isPresented: $select) {
                            SheetView(obj: user.jutsu!, tex: "Jutsu")
                        }
                        Text("Jutsu:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 25))
                        .padding()

                        ForEach(user.jutsu!, id: \.self){ a in
                            Text(a)
                                .font(.system(size: 20))
                                //.padding()
                                
                        }
//                        Text("Jutsu:")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .font(.system(size: 20))
//                            .padding()
//                        
//                      //  Picker("Justu", selection: $select){
//                            ForEach(user.jutsu!, id: \.self){ a in
//                                //lazygrid
//                                VStack{
//                                    Text(a)
//                                }
//                              .onTapGesture {
//                                 showingSheet.toggle()
//                               }
//                            }
//                           .sheet(isPresented: $showingSheet) {
//                               SheetView()
//                           }
//                        }
//                        .font(.system(size: 20))
//                        .padding()
                    }
                    if(user.uniqueTraits != nil){
                        Text("Caracteristicas unicas:")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 25))
                            .padding()
                        ForEach(user.uniqueTraits!, id: \.self){ a in
                            Text(a)
                        }
                        .font(.system(size: 20))
                        .padding()
                    }
                    
                }.frame(width: 350, height: .infinity)
                    .background(.brown).cornerRadius(20)
            }
        }
    }
}

#Preview {
    SwiftUIView(user: character(id: 1, name: "Naruto", images: ["photo.artframe"], jutsu: ["Rasengan"], uniqueTraits: [""]))
}
