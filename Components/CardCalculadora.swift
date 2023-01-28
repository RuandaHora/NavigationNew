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
            VStack {
                HStack{
                    Image(systemName: "plusminus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                    Text("Calculator")
                        .font(.title2.bold())
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .padding(10)
                    
                }
            }.frame(width: 370,height: 50)
                .background(Image("Gradiente2"))
            .cornerRadius(30)
            .padding(5)
        }
    }
}

struct CardCalculadora_Previews: PreviewProvider {
    static var previews: some View {
        CardCalculadora()
    }
}
