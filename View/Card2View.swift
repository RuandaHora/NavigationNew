//
//  Card2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Card2View: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0 ..< 5) { item in
                    Cards2View()
                }
            }
        }
    }
}

struct Card2View_Previews: PreviewProvider {
    static var previews: some View {
        Card2View()
    }
}

struct Cards2View: View {
    var body: some View {
        NavigationLink(destination: Details2View()) {
            VStack (alignment: .leading, spacing: 16.0){
                
                HStack {
                    Spacer()
                    Image("BackGround2")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .trailing)
                        .cornerRadius(12)
                }
                Text("SwiftUI for IOS 16")
                    .font(.title.bold())
                Text("SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift.")
                    .opacity(0.7)
                Text("Created by apple.")
                    .blendMode(.overlay)
            }
            .padding(.all)
            .frame(width: 180, height: 230)
            .foregroundColor(.white)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
    }
}
