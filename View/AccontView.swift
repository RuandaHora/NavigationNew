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
    var body: some View {
        ScrollView{
            VStack{
                Image("Image 2")
                
                
            }.padding()
                .background(Color.purple)
                .frame(width: 350, height: 485)
                .cornerRadius(50)
        }
        VStack (alignment: .leading){
           
            
        }.frame(width: 300, height: 200)
            .background(Color.purple)
            .cornerRadius(50)
            .foregroundColor(.white)
            .font(.headline)
            .blur(radius: 5)
    }
}

struct AccontView_Previews: PreviewProvider {
    static var previews: some View {
        AccontView()
    }
}
