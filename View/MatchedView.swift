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
            .background(Color.black)
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea()
            if !show {
                Text("Teste")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
            }
            else {
                Text("Teste")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
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
