//
//  LoadingView.swift
//  Navigation
//
//  Created by Marcelo Hora on 22/01/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView("Loading...")
            .progressViewStyle(.linear)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
