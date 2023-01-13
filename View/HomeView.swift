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
                VStack (spacing: 16){
                        HStack{
                            Bar()
                        }
                    HStack {
                            Mensage()
                    }
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(0 ..< 3) { item in
                                CardsView()
                                Cards3View()
                                Cards2View()
                            }
                        }
                    }
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach(0 ..< 3) { item in
                                Cards2View()
                                CardsView()
                                Cards3View()
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
