//
//  MsPrivado1View.swift
//  Navigation
//
//  Created by Marcelo Hora on 16/01/23.
//

import SwiftUI

struct MsPrivado1View: View {
    @State var show = false
    @State var search = ""
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 0, height: 0)
                    .background(Image("Verde"))
                VStack{
                    HStack{
                        Spacer()
                        NavigationLink (destination: AccontView()) {
                            Image("Image 2")
                                .resizable()
                                .background(Image("Laranja"))
                                .frame(width: 50, height: 50)
                                .cornerRadius(100)
                                .padding(8)
                            
                            Spacer()
                        }
                    }
                    Spacer()
                    HStack{
                        
                            TextField("  Digite", text: self.$search)
                                .frame(width: 250, height: 40)
                                .background(.ultraThinMaterial)
                                .cornerRadius(20)
                        
                    }
                }
            }
        }
    }
}

struct MsPrivado1View_Previews: PreviewProvider {
    static var previews: some View {
        MsPrivado1View()
    }
}
