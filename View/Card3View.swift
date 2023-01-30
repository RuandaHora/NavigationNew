//
//  Card3View.swift
//  Navigation
//
//  Created by Marcelo Hora on 13/01/23.
//

import SwiftUI

struct Card3View: View {
    @State var show = false
    var body: some View {
        HStack {
            Card3ViewOpen()
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
            .frame(width: 176, height: 230)
            .foregroundColor(.white)
            .background(Image("Card3"))
            .cornerRadius(30)
            .shadow(radius: 5)
            .padding(11.5)
    }
}

struct Card3ViewOpen: View {
    @State var show = false
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                Cards3View()
                    .sheet(isPresented: $show, content:{ Details3View()})
            }
            .onTapGesture {
                show.toggle()
            }
        }
    }
}
