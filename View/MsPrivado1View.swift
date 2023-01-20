//
//  MsPrivado1View.swift
//  Navigation
//
//  Created by Marcelo Hora on 16/01/23.
//

import SwiftUI

struct MsPrivado1View: View {
    var body: some View {
        HStack {
            MsPrivado1()
        }
    }
}

struct MsPrivado1View_Previews: PreviewProvider {
    static var previews: some View {
        MsPrivado1View()
    }
}

struct MsPrivado1: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            VStack{
                HStack{
                    Text("            ")
                    NavigationLink (destination: AccontView()) {
                        Image("Image 2")
                            .resizable()
                            .background(Image("Laranja"))
                            .frame(width: 50, height: 50)
                            .cornerRadius(100)
                            .padding(8)
                        Text("Ruan da hora")
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
                                Divider()
                                Image(systemName: "plus" )
                                    .foregroundColor(.blue)
                                    .font(.title)
                                TextField("  Digite", text: self.$search)
                                    .frame(width: 250, height: 40)
                                    .foregroundColor(.primary)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(20)
                                Image(systemName: "brazilianrealsign.circle" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                                Image(systemName: "camera" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                                Image(systemName: "mic" )
                                    .foregroundColor(.blue)
                                    .font(.title2)
                                Divider()
                            }
                    )
                }
            }
        }
    }
}
