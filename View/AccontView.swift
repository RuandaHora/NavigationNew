
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
                .background(Image("GeneralBackground"))
            
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
                Divider()
                VStack{
                    if !show {
                        HStack{
                            Image("Insta")
                                .resizable()
                                .frame(width: 25, height: 25)
                                
                            Image("Face")
                                .resizable()
                                .frame(width: 25, height: 25)
                                
                            Image("Linke")
                                .resizable()
                                .frame(width: 25, height: 25)
                               
                            Image("GitHub")
                                .resizable()
                                .frame(width: 25, height: 25)
                                
                            
                        }
                        .foregroundColor(Color("LetraA"))
                        .frame(width: 250, height: 90)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        .font(.headline)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    } else {
                        VStack (alignment: .leading){
                            Text("GITHUB: https://github.com/RuandaHora")
                            Divider()
                            Text("INSTAGRAM: https://www.instagram.com/ruanpablodahora/ ")
                            Divider()
                            Text("LINKEDIN: https://www.linkedin.com/in/ruan-da-hora-959b0220a/ ")
                            Divider()
                            Text("FACEBOOK: https://web.facebook.com/ruan.dahora.54/ ")
                            Divider()
                        }
                        .foregroundColor(Color("LetraA"))
                        .frame(width: 350, height: 250)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        .font(.headline)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    }
                }
          Divider()
            }.onTapGesture {
                withAnimation (.spring(response: 0.6, dampingFraction: 0.5)){
                    show.toggle()
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
