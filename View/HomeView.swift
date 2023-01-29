import SwiftUI

struct HomeView: View {
    
    @State var show = false
    @State var search = ""
    @Namespace var namespace
    @State var notificacao = "notificacao"
    
    var body: some View {
        NavigationView {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 0, height: 0)
                .background(Image("Verde"))
                ScrollView (.vertical){
                    VStack (spacing: 16){
                        HStack {
                            CardCalculadora()
                        }
                        VStack {
                            Text("")
                        }
                        HStack {
                                Mensages()
                        }
                        
                        HStack {
                            Text("Recent Item")
                                .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack {
                                ForEach(0 ..< 1) { item in
                                    CardsViewOpen()
                                    Card2ViewOpen()
                                    Card3ViewOpen()
                                }
                            }
                        }
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0 ..< 1) { item in
                                    Card3ViewOpen()
                                    CardsViewOpen()
                                    Card2ViewOpen()
                                }
                            }
                        }
                            HStack {
                                CardCalculadora()
                            }
                        HStack {
                            Text("Conversores ")
                                .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                            
                        }
                            HStack{
                                CardBin2Dec()
                            }
                            HStack{
                                CardDolar_Real()
                            }
                    }
                }
                .navigationTitle("Featured")
                .foregroundColor(.white)
            }
        }
    }
    struct Homeview_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
