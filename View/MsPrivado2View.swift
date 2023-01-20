//
//  MsPrivado2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct MsPrivado2View: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        HStack {
            MsPrivado2()
        }
    }
}

struct MsPrivado2View_Previews: PreviewProvider {
    static var previews: some View {
        MsPrivado2View()
    }
}

struct MsPrivado2: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            VStack{
                HStack{
                    Text("            ")
                    NavigationLink (destination: Accont2View()) {
                        Image("Image 1")
                            .resizable()
                            .frame(width: 60, height: 50)//Enquadramento da imagem.
                            .frame(width: 50, height: 50)//Enquandramento do circulo.
                            .cornerRadius(100)
                        Text("Marcio")
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                        Spacer()
                    }.padding(8)
                }
                Spacer()
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 500, height: 60)
                        .background(.ultraThinMaterial)
                    
                        .overlay(
                            HStack{
                                Divider()
                                Image(systemName: "plus" )
                                    .foregroundColor(.blue)
                                    .font(.title)
                                TextField("  Digite", text: self.$search)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(.primary)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(20)
                                Image(systemName: "brazilianrealsign.circle" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                                Image(systemName: "camera" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                                Image(systemName: "mic" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                            }
                        )
                }
            }
        }
    }
}
