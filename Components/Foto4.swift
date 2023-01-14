//
//  Foto4.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Foto4: View {
    var body: some View {
        HStack {
            Fotos4()
        }
    }
}

struct Foto4_Previews: PreviewProvider {
    static var previews: some View {
        Foto4()
    }
}

struct Fotos4: View {
    var body: some View {
        VStack {
            Image("Foto4")
                .resizable()
                .frame(width: 400, height: 300)
                .cornerRadius(20)
        }.padding(11.5)
    }
}
