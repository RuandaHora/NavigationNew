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
            VStack {
                HStack{
                    Image(systemName: "repeat.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                    Text("Binário para Decimal")
                        .font(.title2.bold())
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .padding(10)
                }
            }.frame(width: 370,height: 50)
            .background(Image("BackGround"))
            .cornerRadius(30)
            .shadow(radius: 6)
            .padding(6)
        }
    }
}

struct CardBin2Dec_Previews: PreviewProvider {
    static var previews: some View {
        CardBin2Dec()
    }
}
