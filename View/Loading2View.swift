//
//  Loading2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 24/01/23.
//

import SwiftUI

struct Loading2View: View {
    
    @State private var isActive = false
    @State private var size = 0.5
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            LoadingView()
        }
        else {
            VStack{
                Image("Ruan")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .cornerRadius(35)
                Text("Ruan da Hora")
                    .font(.title2.bold())
            }
            .opacity(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.size = 1.0
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct Loading2View_Previews: PreviewProvider {
    static var previews: some View {
        Loading2View()
    }
}
