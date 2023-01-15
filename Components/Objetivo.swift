//
//  Objetivo.swift
//  Navigation
//
//  Created by Marcelo Hora on 14/01/23.
//

import SwiftUI

struct Objetivo: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    @State var show = false
    var body: some View {
        HStack {
            Objective()
        }
    }
}

struct Objetivo_Previews: PreviewProvider {
    static var previews: some View {
        Objetivo()
    }
}

struct Objective: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    @State var show = false
    var body: some View {
        VStack {
            VStack{
                if !show {
                    HStack{
                        Text("Objetivo Pessoal")
                        
                        
                    }
                    .foregroundColor(Color("LetraA"))
                    .frame(width: 250, height: 90)
                    .background(.ultraThinMaterial)
                    .cornerRadius(10)
                    .font(.headline)
                    .matchedGeometryEffect(id: "padding", in: namespace)
                } else {
                    VStack {
                        Text("Estudando Desenvolvimento IOS! E me esforçando para conseguir minha primeira vaga! E ser um Dev de Referência Mundial!!")
                            .padding(1)
                    }
                    .foregroundColor(Color("LetraA"))
                    .frame(width: 300, height: 100)
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
