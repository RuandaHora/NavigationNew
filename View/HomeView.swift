import SwiftUI

struct HomeView: View {
    
    @State var show = false
    @State var search = ""
    @Namespace var namespace
    @State var notificacao = "notificacao"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("GeneralBackground"))
            ScrollView (.vertical){
                VStack (spacing: 20){
                        HStack{
                            Bar()
                        }
                    HStack {
                            Mensage()
                    }
                    ScrollView(.horizontal){
                        HStack (spacing: 16) {
                            ForEach(0 ..< 5) { item in
                                CardsView()
                            }
                        }
                    }
                    ScrollView (.horizontal) {
                        HStack (spacing: 16) {
                            ForEach(0 ..< 5) { item in
                                Cards2View()
                            }
                        }
                    }
                }
            }
        }
    }
    struct Homeview_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
