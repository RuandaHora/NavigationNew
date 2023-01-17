//
//  MsPrivado1View.swift
//  Navigation
//
//  Created by Marcelo Hora on 16/01/23.
//

import SwiftUI

struct MsPrivado1View: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    
                    NavigationLink (destination: AccontView()) {
                        Image("Image 2")
                            .resizable()
                            .frame(width: 36, height: 39)
                            .cornerRadius(10)
                            .padding(8)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                    }
                }
            }
        }
    }
}

struct MsPrivado1View_Previews: PreviewProvider {
    static var previews: some View {
        MsPrivado1View()
    }
}
