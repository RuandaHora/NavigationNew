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
                NavigationLink(destination: Perfil()) {
                    VStack{
                        Image("Image 2")
                            .resizable()
                    }
                    .background(Image("Laranja"))
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                }
                Spacer()
                Spacer()
                VStack (alignment: .leading){
                    Text("Nome: Ruan da Hora.")
                    Text("Idade: 18 anos.")
                    Text("País: Brasil.")
                    
                    
                }
                .foregroundColor(Color("LetraA"))
                .frame(width: 250, height: 90)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .font(.headline)
                Spacer()
                Spacer()
                HStack {
                    Objective()
                }
                Spacer()
                Spacer()
                VStack{
                    HStack {
                        RedesSociaiss()
                    }
                    
                }
            }
        }
    }
}

struct Accont3View_Previews: PreviewProvider {
    static var previews: some View {
        Accont3View()
    }
}
