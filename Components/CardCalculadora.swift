//
//  CardCalculadora.swift
//  Navigation
//
//  Created by Marcelo Hora on 27/01/23.
//

import SwiftUI

struct CardCalculadora: View {
    var body: some View {
        VStack (alignment: .trailing){
            Text("Calculator")
                .font(.title2.bold())
              
        }  .frame(width: 370,height: 50)
            .background(Color.pink)
            .cornerRadius(30)
    }
}

struct CardCalculadora_Previews: PreviewProvider {
    static var previews: some View {
        CardCalculadora()
    }
}
