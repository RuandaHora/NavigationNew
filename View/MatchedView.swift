//
//  MatchedView.swift
//  Navigation
//
//  Created by Marcelo Hora on 10/01/23.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("DarkMode"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            if !show {
                VStack (alignment: .leading, spacing: 12){
                    Spacer()
                    Text("AD BRAS")
                        .frame(width: 300, height: 80)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .font(.title.bold())
                        .cornerRadius(40)
                        
                        
                }.frame(width: 300, height: 200)
                    .background(Image("BackGround"))
                    .cornerRadius(40)
            }
            else {
                VStack {
                    Text("AD BRAS")
                        .foregroundColor(.white)
                        .font(.title.bold())
                }.frame(width: 340, height: 450)
                    .background(Image("BackGround"))
                    .cornerRadius(40)
                    
            }
            Spacer()
        }.onTapGesture {
            show.toggle()
    }
        }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
