//
//  ContentView.swift
//  Desafio03-01
//
//  Created by Turma01-8 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Instragram")
                Spacer()
                Image(systemName: "arrow.circlepath")
                Image(systemName: "line.3.horizontal")
            }.padding()
            HStack {
                VStack {
                    Image(.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 140, height: 150)
                }
                VStack {
                    HStack {
                        VStack {
                            Text("8")
                                .font(.title)
                            Text("Post")
                                .frame(width: 50)
                                .font(.footnote)
                        }
                        VStack {
                            Text("12k")
                                .font(.title)
                            Text("Seguidores")
                                .frame(width: 90)
                                .font(.footnote)
                        }
                        VStack {
                            Text("2k")
                                .font(.title)
                            Text("seguindo")
                                .frame(width: 80)
                                .font(.footnote)
                        }
                    }
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Editar perfil")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .foregroundColor(.lala)
                        }) .background(Color.gray.opacity(0.6))
                            .buttonStyle(.bordered)
                            .cornerRadius(8)
                    }
                }
            }.padding(.vertical, 1).padding(.trailing)
            
            VStack {
                HStack {
                    Text("Nome Sobrenome")
                        .frame(maxWidth: .infinity,alignment: .leading)
                }
                HStack {
                    Text("Está é a biografia do perfil do usuário")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .font(.footnote)
                    
                }
            }.padding()
            
            HStack {
                VStack(content: {
                    Image(systemName: "square.grid.3x3.fill").padding(.leading, 35)
                        .frame(alignment: .center)

                })
                Spacer()
                VStack(content: {
                    Image(systemName: "laptopcomputer")
                        .frame(alignment: .center)
                })
                Spacer()
                VStack(content: {
                    Image(systemName: "person.crop.circle.fill")
                        .frame(alignment: .center)
                        .padding(.trailing, 35)
                })
            }.padding().border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            HStack {
                VStack {
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)
                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                }
                VStack {
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                }
                VStack {
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                    HStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.lala)

                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
