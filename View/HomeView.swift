import SwiftUI

struct HomeView: View {
    
    @State var show = false
    @State var search = ""
    @Namespace var namespace
    @State var notificacao = "notificacao"
    
    var body: some View {
        ZStack{
            HStack{
                Bar()
            }
            
            ScrollView(.horizontal){
                HStack {
                    ForEach(0 ..< 5) { item in
                        CardsView()
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
