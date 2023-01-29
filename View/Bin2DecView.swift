//
//  Bin2DecView.swift
//  Navigation
//
//  Created by Marcelo Hora on 28/01/23.
//

import SwiftUI

struct Bin2DecView: View {
    //Variaveis
    
    @State var crescendo = 1.0
    
    @State var Binary = ""
    @State var DarkMode = "CustomColor"
    @State var Ligth = "Ligth"
    @State var Dark =  "Dark"
    
    @State private var binaryInput = ""
    
    func dark(){
        RoundedRectangle(cornerRadius: 0)
        .fill(Color(DarkMode))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
            .fill(Color(DarkMode))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack {
                VStack{
                    HStack{
                        Text("Binary to Decimal Converter")
                            .font(.headline)
                            .foregroundColor(.primary)
                        Spacer()
                    }
                    Divider()
                }
                HStack{
                    TextField("Binary", text: self.$Binary)
                        .keyboardType(.numberPad)
                        .foregroundColor(Color.primary)
                        .frame(width: 280, height: 35)
                        .background(Color("CustomColor"))
                        .cornerRadius(5)
                    
                    Button(action: {Binary = ""}) {
                        Image("back")
                        
                            .frame(width: 75, height: 30)
                            .background(Color("Icones"))
                            .cornerRadius(5)
                    }
                }
                HStack{
                    TextField ("Decimal", text: self.$binaryInput)
                        .foregroundColor(.primary)
                        .frame(width: 280, height: 35)
                        .background(Color("CustomColor"))
                        .cornerRadius(5)
                    
                    Button(action: {}) {
                        Image("copy")
                        
                            .frame(width: 75, height: 30)
                            .background(Color("Icones"))
                            .cornerRadius(5)
                    }
                    
                }
                VStack{
                    Divider()
                    Text("Enter a binary number:")
                        .font(.headline)
                        .foregroundColor(.primary)
                }
                
                HStack{
                    
                    Button(action: {Binary += "1"}){
                        
                        Text("1")
                        
                        .font(.headline)
                        .foregroundColor(.blue)
                        .frame(width: 70, height: 30)
                        .background(Color("Color"))
                        .cornerRadius(5)
                    }
                }
                HStack{
                    
                    Button(action: {Binary += "0"}){
                        Text("0")
                        
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(width: 70, height: 30)
                            .background(Color("Color"))
                            .cornerRadius(5)
                    }
                }
    
                HStack{
                    Button(action: {"\(binaryToDecimal(binary: binaryInput))"}) {
                      
                        Text("Convert")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                    }
                }
                Spacer()
            }
            .onAppear{
                self.crescendo -= 0.1
            }
        }
    }
    func binaryToDecimal(binary: String) -> Int {
        return Int(strtoul(binary, nil, 2))
    }
}

struct Bin2DecView_Previews: PreviewProvider {
    static var previews: some View {
        Bin2DecView()
    }
}
