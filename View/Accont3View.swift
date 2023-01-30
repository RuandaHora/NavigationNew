//
//  Accont3View.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct Accont3View: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            ScrollView{
                NavigationLink(destination: Perfil3()) {
                    VStack{
                        Image("Image 3")
                            .resizable()
                    }
                    .background(Image("Laranja"))
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                    .padding(5)
                    .shadow(radius: 5)
                }
                Spacer()
                Spacer()
                VStack (alignment: .leading){
                    Text("Alex")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                }
                VStack (alignment: .leading){
                    Text("Nome: Alex.")
                    Text("Idade: 35 anos.")
                    Text("País: Brasil.")
                    
                    
                }
                .foregroundColor(Color("LetraA"))
                .frame(width: 250, height: 90)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .font(.headline)
                .padding(5)
                .shadow(radius: 5)
            }
            }
        .refreshable {
            print("[CARREGANDO....]")
        }
    }
}

struct Accont3View_Previews: PreviewProvider {
    static var previews: some View {
        Accont3View()
    }
}
