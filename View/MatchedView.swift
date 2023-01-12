
import SwiftUI

struct MatchedView: View {
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
            .fill(Color("DarkMode"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            if !show {
                VStack (alignment: .leading, spacing: 12){
                    Spacer()
                    VStack (alignment: .leading, spacing: 12){
                        Text("AD BRAS")
                            .font(.largeTitle.bold())
                            .matchedGeometryEffect(id: "title", in: namespace)
                        
                    }.padding(20)
                        .background(
                            Rectangle()
                                .fill(.ultraThinMaterial)
                                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .blur(radius: 30)
                                .matchedGeometryEffect(id: "blur", in: namespace))
                    
                    
                }.frame(width: 350, height: 250)
                    .background(Image("BackGround"))
                    .cornerRadius(40)
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "blur", in: namespace))
            }
            else {
                ScrollView{
                    VStack{
                        Spacer()
                          
                    }.frame(maxWidth: .infinity)
                    .frame(height: 500)
                    .foregroundStyle(.white)
                        .background(
                            Image("BackGround")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .matchedGeometryEffect(id: "backgound", in: namespace))
                        .mask(
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace))
                        .overlay(
                            VStack (alignment: .leading, spacing: 12){
                                Text("AD BRAS")
                                    .font(.largeTitle.bold())
                                    .matchedGeometryEffect(id: "title", in: namespace)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            } .padding(20)
                                .foregroundColor(.white)
                                .background(
                                    Rectangle()
                                        .fill(.ultraThinMaterial)
                                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                        .matchedGeometryEffect(id: "blur", in: namespace)
                        )
                        )
                }
            }
            Spacer()
        }.onTapGesture {
            withAnimation (.spring(response: 0.6, dampingFraction: 0.5)){
                show.toggle()
            }
        }
        }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
