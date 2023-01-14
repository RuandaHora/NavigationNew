//
//  Foto3.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Foto3: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Fotos3()
            }
        }
    }
}

struct Foto3_Previews: PreviewProvider {
    static var previews: some View {
        Foto3()
    }
}

struct Fotos3: View {
    var body: some View {
        VStack {
            Image("Foto3")
                .resizable()
                .frame(width: 350, height: 300)
                .cornerRadius(20)
        }.padding(11.5)
    }
}
