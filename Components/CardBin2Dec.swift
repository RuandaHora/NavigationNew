//
//  CardBin2Dec.swift
//  Navigation
//
//  Created by Marcelo Hora on 28/01/23.
//

import SwiftUI

struct CardBin2Dec: View {
    var body: some View {
        NavigationLink(destination: Bin2DecView()) {
            VStack (alignment: .trailing){
                HStack{
                    Image(systemName: "repeat.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Binário para Decimal")
                        .font(.title2.bold())
                    
                }
            }.frame(width: 370,height: 50)
                .background(.ultraThinMaterial)
            .cornerRadius(30)
            .padding(20)
        }
    }
}

struct CardBin2Dec_Previews: PreviewProvider {
    static var previews: some View {
        CardBin2Dec()
    }
}
