//
//  Perfil3.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct Perfil3: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("DarkMode"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack{
                Image("Image 3")
                    .resizable()
            }
            .background(Image("Laranja"))
            .frame(width: 500, height: 500)
            .cornerRadius(0)
            
        }
    }
}

struct Perfil3_Previews: PreviewProvider {
    static var previews: some View {
        Perfil3()
    }
}
