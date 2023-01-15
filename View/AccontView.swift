
import SwiftUI

struct AccontView: View {
    @State var nome = "Ruan da Hora"
    @State var idade = "18 years old"
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
            
            ScrollView{
                NavigationLink(destination: Perfil()) {
                    VStack{
                        Image("Image 2")
                            .resizable()
                    }
                    .background(Color.purple)
                    .frame(width: 200, height: 200)
                    .cornerRadius(100)
                }
                Divider()
                VStack (alignment: .leading){
                    Text("Nome: Ruan da Hora.")
                    Text("Idade: 18 anos.")
                    Text("País: Brasil.")
                    
                    
                }
                .foregroundColor(Color("LetraA"))
                .frame(width: 250, height: 90)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                .font(.headline)
                Spacer()
                Spacer()
                HStack {
                    Objective()
                }
                Spacer()
                Spacer()
                VStack{
                    HStack {
                        RedesSociaiss()
                    }
                    
                }
            }
        }
    }
}

struct AccontView_Previews: PreviewProvider {
    static var previews: some View {
        AccontView()
    }
}
