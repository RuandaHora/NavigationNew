//
//  OpenMensages.swift
//  Navigation
//
//  Created by Marcelo Hora on 14/01/23.
//

import SwiftUI

struct OpenMensages: View {
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

struct OpenMensages_Previews: PreviewProvider {
    static var previews: some View {
        OpenMensages()
    }
}
