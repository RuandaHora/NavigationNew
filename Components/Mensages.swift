//
//  Mensages.swift
//  Navigation
//
//  Created by Marcelo Hora on 14/01/23.
//

import SwiftUI

struct Mensages: View {
    var body: some View {
        NavigationLink(destination: OpenMensages()) {
            HStack{
                Mensagess()
            }
        }
    }
}

struct Mensages_Previews: PreviewProvider {
    static var previews: some View {
        Mensages()
    }
}
