//
//  FeaturedView.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct FeaturedView: View {
    var body: some View {
        HStack {
            Featured()
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}

struct Featured: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical) {
                HStack {
                    Text("")
                    
                }
            }.navigationTitle("Featured")
        }
    }
}
