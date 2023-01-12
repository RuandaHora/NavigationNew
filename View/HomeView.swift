import SwiftUI

struct HomeView: View {
    
    @State var show = false
    @State var search = ""
    @Namespace var namespace
    @State var notificacao = "notificacao"
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 10)
            .frame(width: 0, height: 0)
            .background(Image("GeneralBackground"))

            VStack{
                Divider()
                HStack{
                    NavigationLink (destination: MensageView()) {
                        Text("Home ")
                            .font(.title.bold())
                            .foregroundColor(Color("DarkMode"))
                            .padding(.horizontal, 30)
                    }
                    VStack (alignment: .trailing) {
                        HStack{
                            Spacer()
                            HStack{
                                if !show {
                                    Image("Lupa")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .cornerRadius(10)
                                        .padding(8)
                                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                    
                                } else{
                                    VStack{
                                        TextField("search", text: self.$search)
                                            .frame(width: 120, height: 35)
                                            .background(Color.gray)
                                            .cornerRadius(20)
                                    }
                                }
                            }.onTapGesture {
                                show.toggle()
                            }
                            VStack {
                                NavigationLink (destination: AccontView()) {
                                    Image("Image 2")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .cornerRadius(10)
                                        .padding(8)
                                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                                }
                            }
                        }
                    }
                }
                Spacer()
            }
            
            if !show {
                VStack (alignment: .leading, spacing: 12) {
                    Spacer()
                    VStack (alignment: .leading, spacing: 12) {
                        Text("Ruan mensagens")
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
                            .blur(radius: 30)
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
                .frame(height: 300)
                    .padding(20)
               
            }
            else {
                ScrollView {
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
                                    Text("Ruan mensagens")
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
                                    HStack{
                                        Button(action: {}) {
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
                                    HStack{
                                        Button(action: {}) {
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
                                      HStack{
                                          Button(action: {}) {
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
                                          }
                                        
                                      }.background(Color.blue)
                                        .cornerRadius(20)
                                        .font(.footnote.bold())
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
        .onTapGesture {
            withAnimation (.spring(response: 0.6, dampingFraction: 0.5)){
                show.toggle()
            }
        }
    }
}
struct Homeview_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
