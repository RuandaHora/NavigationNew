//
//  Card3View.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Card3View: View {
    var body: some View {
        ScrollView (.horizontal) {
                HStack {
                    ForEach(0 ..< 5) { item in
                        Cards3View()
                    }
                }
        }
    }
    }

struct Card3View_Previews: PreviewProvider {
    static var previews: some View {
        Card3View()
    }
}

struct Cards3View: View {
    var body: some View {
        NavigationLink(destination: Details2View()) {
            VStack (alignment: .leading, spacing: 16.0){
                HStack {
                    Spacer()
                    Image("Camera")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .trailing)
                        .cornerRadius(12)
                }
                Text("Best Photos")
                    .font(.title.bold())
                Text("Best photos of the year 2022.")
                    .opacity(0.7)
                Text("Created by Ruan.")
                    .blendMode(.overlay)
            }
            .padding(.all)
            .frame(width: 180, height: 230)
            .foregroundColor(.white)
            .background(Image("Card3"))
            .cornerRadius(30)
        }.padding(11.5)
    }
}
