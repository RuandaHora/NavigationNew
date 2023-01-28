//
//  CardCalculadora.swift
//  Navigation
//
//  Created by Marcelo Hora on 27/01/23.
//

import SwiftUI

struct CardCalculadora: View {
    var body: some View {
        NavigationLink(destination: CalculadoraView()) {
            VStack (alignment: .trailing){
                HStack{
                    Image(systemName: "plusminus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Calculator")
                        .font(.title2.bold())
                    
                }
            }.frame(width: 370,height: 50)
                .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
    }
}

struct CardCalculadora_Previews: PreviewProvider {
    static var previews: some View {
        CardCalculadora()
    }
}
