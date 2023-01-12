
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
                    Text("AD BRAS")
                        .frame(width: 350, height: 80)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.black)
                        .font(.title.bold())
                        .cornerRadius(20)
                        
                        
                }.frame(width: 350, height: 250)
                    .background(Image("BackGround"))
                    .cornerRadius(40)
                    
            }
            else {
                ScrollView{
                    VStack {
                        
                        Text("AD BRAS")
                        
                    }
                    .frame(width: 350, height: 80)
                        .background(.ultraThinMaterial)
                        .foregroundColor(.black)
                        .font(.title.bold())
                        .cornerRadius(20)
                    .frame(width: 340, height: 450)
                        .background(Image("BackGround"))
                        .cornerRadius(40)
                }
            }
            Spacer()
        }.onTapGesture {
            show.toggle()
            }
        }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
