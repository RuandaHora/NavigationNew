//
//  Details3View.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Details3View: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            ScrollView {
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
                .foregroundColor(.white)
                .background(Image("Card3"))
                .cornerRadius(20)
                
                VStack (alignment: .leading, spacing: 16){
                    
                    Text("Photos")
                        .font(.title.bold())
                    Text("Here's a look back at the best photos of 2022, so get ready...")
                        .blendMode(.overlay)
                }
                .padding()
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                
                ScrollView (.horizontal) {
                    HStack {
                        Divider()
                        Fotos4()
                        Divider()
                        Fotos1()
                        Divider()
                        Fotos2()
                        Divider()
                        Fotos3()
                        Divider()
                    }
                    
                }
            }
        }
    }
}

struct Details3View_Previews: PreviewProvider {
    static var previews: some View {
        Details3View()
    }
}
