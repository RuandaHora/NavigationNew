//
//  CardDolar:Real.swift
//  Navigation
//
//  Created by Marcelo Hora on 28/01/23.
//

import SwiftUI

struct CardDolar_Real: View {
    var body: some View {
        NavigationLink(destination: Bin2DecView()) {
            VStack {
                HStack{
                    Image(systemName: "repeat.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                    Text("Dolar para Real")
                        .font(.title2.bold())
                    Spacer()
                }
            }.frame(width: 370,height: 50)
            .background(Image("Card3"))
            .cornerRadius(30)
            .padding(5)
        }
    }
}

struct CardDolar_Real_Previews: PreviewProvider {
    static var previews: some View {
        CardDolar_Real()
    }
}
