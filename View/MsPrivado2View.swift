//
//  MsPrivado2View.swift
//  Navigation
//
//  Created by Marcelo Hora on 17/01/23.
//

import SwiftUI

struct MsPrivado2View: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        HStack {
            MsPrivado2()
        }
    }
}

struct MsPrivado2View_Previews: PreviewProvider {
    static var previews: some View {
        MsPrivado2View()
    }
}

struct MsPrivado2: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            VStack{
                HStack{
                    Text("        ")
                    NavigationLink (destination: Accont2View()) {
                        Image("Image 1")
                            .resizable()
                            .background(Image("Laranja"))
                            .frame(width: 50, height: 50)
                            .cornerRadius(100)
                            .padding(8)
                        Text("Marcio")
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                Spacer()
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 500, height: 60)
                        .background(.ultraThinMaterial)
                    
                        .overlay(
                            HStack{
                                
                                TextField("  Digite", text: self.$search)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(.primary)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(20)
                                
                            }
                        )
                }
            }
        }
    }
}
