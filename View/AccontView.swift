//
//  AccontView.swift
//  Navigation
//
//  Created by Marcelo Hora on 11/01/23.
//

import SwiftUI

struct AccontView: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    var body: some View {
        ScrollView{
            VStack{
                Image("Image 2")
                
                
            }.padding()
                .background(Color.purple)
                .frame(width: 350, height: 485)
                .cornerRadius(50)
            
            VStack (alignment: .leading){
                Text("Nome: Ruan da Hora.")
                Text("Idade: 18 anos.")
                
                
            }.font(.headline)
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .matchedGeometryEffect(id: "blur", in: namespace)
        }
    }
}

struct AccontView_Previews: PreviewProvider {
    static var previews: some View {
        AccontView()
    }
}
