//
//  RedesSociais.swift
//  Navigation
//
//  Created by Marcelo Hora on 14/01/23.
//

import SwiftUI

struct RedesSociais: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    @State var show = false
    var body: some View {
        HStack {
            RedesSociaiss()
        }
    }
}

struct RedesSociais_Previews: PreviewProvider {
    static var previews: some View {
        RedesSociais()
    }
}

struct RedesSociaiss: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    @State var show = false
    var body: some View {
        VStack {
            VStack{
                if !show {
                    HStack{
                        Image("Insta")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Image("Face")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Image("Linke")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Image("GitHub")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        
                    }
                    .foregroundColor(Color("LetraA"))
                    .frame(width: 250, height: 90)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .font(.headline)
                    .matchedGeometryEffect(id: "padding", in: namespace)
                } else {
                    VStack (alignment: .leading){
                        Text("GITHUB: https://github.com/RuandaHora")
                        Divider()
                        Text("INSTAGRAM: https://www.instagram.com/ruanpablodahora/ ")
                        Divider()
                        Text("LINKEDIN: https://www.linkedin.com/in/ruan-da-hora-959b0220a/ ")
                        Divider()
                        Text("FACEBOOK: https://web.facebook.com/ruan.dahora.54/ ")
                        Divider()
                    }
                    .foregroundColor(Color("LetraA"))
                    .frame(width: 350, height: 250)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .font(.headline)
                    .matchedGeometryEffect(id: "padding", in: namespace)
                }
            }
        }.onTapGesture {
            withAnimation (.spring(response: 0.6, dampingFraction: 0.5)){
                show.toggle()
            }
        }
    }
}
