//
//  Details2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Details2View: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("GeneralBackground"))
            ScrollView {
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
                .foregroundColor(.white)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
                VStack (alignment: .leading, spacing: 16){
                    
                    Text("SwiftUI")
                        .font(.title.bold())
                    Text("SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.")
                        .blendMode(.overlay)
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
        }
    }
}

struct Details2View_Previews: PreviewProvider {
    static var previews: some View {
        Details2View()
    }
}
