//
//  OpenMensages.swift
//  Navigation
//
//  Created by Marcelo Hora on 14/01/23.
//

import SwiftUI

struct OpenMensages: View {
    var body: some View {
        HStack {
            Messages()
        }.shadow(radius: 10)
    }
}

struct OpenMensages_Previews: PreviewProvider {
    static var previews: some View {
        OpenMensages()
    }
}

struct Messages: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("GeneralBackground"))
            
            ScrollView(.vertical) {
                HStack {
                    OpenMensagess()
                }
            }
        }
    }
}
