
import SwiftUI

struct MensageView: View {
    var body: some View {
        HStack {
                Mensage()
        }
    }
}

struct MensageView_Previews: PreviewProvider {
    static var previews: some View {
        MensageView()
    }
}


struct Mensage: View {
    @Namespace var namespace
    @State var show = false
    @State var notificacao = "notificacao"
    var body: some View {
        ZStack {
            ScrollView (.vertical) {
                if !show {
                    HStack {
                        Mensagess()
                    }.padding(6)
                     .shadow(radius: 20)
                    
                }
               
                    HStack {
                        OpenMensagess()
                    }.padding(6)
                    .shadow(radius: 20)
            }
            .onTapGesture {
                withAnimation (.spring(response: 0.6, dampingFraction: 0.5)){
                    show.toggle()
                }
        }
        }
    }
}

struct OpenMensagess: View {
    @Namespace var namespace
    @State var show = false
    @State var notificacao = "notificacao"
    var body: some View {
        VStack {
            VStack{
                Spacer()
                
            }.frame(maxWidth: .infinity)
                .frame(height: 500)
                .foregroundStyle(.white)
                .background(
                    Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "backgound", in: namespace))
                .mask(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .matchedGeometryEffect(id: "mask", in: namespace))
                .overlay(
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Mensagens")
                            .font(.largeTitle.bold())
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("3 pessoas enviaram mensagens ")
                            .font(.footnote)
                            .matchedGeometryEffect(id: "text", in: namespace)
                        Text("Ultimas notificações ".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "sutitle", in: namespace)
                        
                        Divider()
                        NavigationLink(destination: MsPrivado2()) {
                            HStack{
                                    Image("Image 1")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .cornerRadius(10)
                                        .padding(8)
                                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    
                                    Text("Eae Ruan, como vão as coisas ?")
                                        .font(.footnote)
                                    Spacer()
                                    Text("1")
                                    
                                        .padding(5)
                                        .foregroundColor(Color.white)
                                        .frame(alignment: .trailing)
                                    
                            }.background(Color.blue)
                                .cornerRadius(20)
                                .font(.footnote.bold())
                        }
                        Divider()
                        NavigationLink(destination: MsPrivado1()) {
                            HStack{
                                
                                    Image("Image 2")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .cornerRadius(10)
                                        .padding(8)
                                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    
                                    Text("Fala meu mano, blz ?")
                                        .font(.footnote)
                                    Spacer()
                                    Text("1")
                                    
                                        .padding(5)
                                        .frame(alignment: .trailing)
                                        .background(Color.blue)
                                        .cornerRadius(20)
                                        .font(.footnote.bold())
                                }.background(Color.blue)
                                    .cornerRadius(20)
                                    .font(.footnote.bold())
                        }
                        Divider()
                        NavigationLink(destination: MsPrivado3()) {
                            HStack{
                                    Image("Image 3")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .cornerRadius(10)
                                        .padding(8)
                                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    Text("Opaaa, bora num play hj ?")
                                        .font(.footnote)
                                    Spacer()
                                    Text("2")
                                    
                                    
                                        .padding(5)
                                        .background(Color.blue)
                                        .cornerRadius(20)
                                        .font(.footnote.bold())
                                
                            }.background(Color.blue)
                                .cornerRadius(20)
                            .font(.footnote.bold())
                        }
                    }
                        .padding(20)
                        .foregroundColor(.white)
                        .background(
                            Rectangle()
                                .fill(.ultraThinMaterial)
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .matchedGeometryEffect(id: "blur", in: namespace)
                        )
                        .offset(y: 250)
                        .padding(20)
                )
        }
    }
}

struct Mensagess: View {
    @Namespace var namespace
    @State var show = false
    @State var notificacao = "notificacao"
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            Spacer()
            VStack (alignment: .leading, spacing: 12) {
                Text("Mensagens")
                    .font(.largeTitle.bold())
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Ultimas notificações ".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "sutitle", in: namespace)
                Text("3 pessoas enviaram mensagens ")
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text", in: namespace)
            }.padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .blur(radius: 50)
                        .matchedGeometryEffect(id: "blur", in: namespace))
            
        }
        .foregroundStyle(.white)
        .background(
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "backgound", in: namespace))
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 250)
        .padding(15)
        .shadow(radius: 5)
    }
}
