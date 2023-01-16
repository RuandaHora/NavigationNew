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
                .background(Image("Azul"))
            ScrollView (.vertical){
                VStack (spacing: 16){
                    VStack {
                        Text("")
                        HStack{
                                Bar()
                        }
                    }
                    HStack {
                            Mensages()
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(0 ..< 1) { item in
                                CardsView()
                                Cards2View()
                                Cards3View()
                            }
                        }
                    }
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0 ..< 1) { item in
                                Cards3View()
                                CardsView()
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
