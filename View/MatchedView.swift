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
                Text("Teste")
                    .frame(width: 300, height: 200)
                    .background(Color.blue)
                    .cornerRadius(40)
            }
            else {
                Text("Teste deu certo")
                    .frame(width: 340, height: 450)
                    .background(Color.purple)
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
