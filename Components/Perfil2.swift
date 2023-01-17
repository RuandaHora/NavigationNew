//
//  Perfil2.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct Perfil2: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("DarkMode"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack{
                Image("Image 1")
                    .resizable()
            }
            .background(Image("Laranja"))
            .frame(width: 600, height: 500)
            .cornerRadius(0)
            
        }
    }
}

struct Perfil2_Previews: PreviewProvider {
    static var previews: some View {
        Perfil2()
    }
}
