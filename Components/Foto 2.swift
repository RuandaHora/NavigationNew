//
//  Foto 2.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Foto_2: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Fotos2()
            }
        }
    }
}

struct Foto_2_Previews: PreviewProvider {
    static var previews: some View {
        Foto_2()
    }
}

struct Fotos2: View {
    var body: some View {
        VStack {
            Image("Foto2")
                .resizable()
                .frame(width: 350, height: 450)
                .cornerRadius(20)
        }.padding(11.5)
    }
}
