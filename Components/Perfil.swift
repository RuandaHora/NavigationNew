//
//  Perfil.swift
//  Navigation
//
//  Created by Marcelo Hora on 11/01/23.
//

import SwiftUI

struct Perfil: View {
    var body: some View {
        VStack{
            Image("Image 2")
                .resizable()
        }
        .background(Color.purple)
        .frame(width: 500, height: 500)
        .cornerRadius(100)
        
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
