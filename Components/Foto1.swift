//
//  Foto1.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Foto1: View {
    var body: some View {
        ScrollView (.horizontal) {
            HStack {
                Fotos1()
            }
        }
    }
}

struct Foto1_Previews: PreviewProvider {
    static var previews: some View {
        Foto1()
    }
}

struct Fotos1: View {
    var body: some View {
        VStack {
            Image("Foto1")
                .resizable()
                .frame(width: 350, height: 400)
                .cornerRadius(20)
        }.padding(11.5)
    }
}
