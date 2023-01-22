//
//  Accont2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct Accont2View: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            ScrollView{
                NavigationLink(destination: Perfil2()) {
                    VStack{
                        Image("Image 1")
                            .resizable()
                            .frame(width:250, height: 200)
                    }
                    .background(Image("Laranja"))
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                }
                Spacer()
                Spacer()
                VStack (alignment: .leading){
                    Text("Márcio")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                }
                VStack (alignment: .leading){
                    Text("Nome: Marcio.")
                    Text("Idade: 39 anos.")
                    Text("País: Brasil.")
                    
                    
                }
                .foregroundColor(Color("LetraA"))
                .frame(width: 250, height: 90)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .font(.headline)
                
            }
            .refreshable {
                print("[CARREGANDO....]")
            }
        }
    }
}

struct Accont2View_Previews: PreviewProvider {
    static var previews: some View {
        Accont2View()
    }
}
