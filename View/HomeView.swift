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
                        VStack {
                            Text(" ")
                        }
                        HStack {
                                Mensages()
                        }.padding(1)
                            .shadow(radius: 5)
                        HStack {
                            CardCalculadora()
                               
                        }
                        HStack {
                            Text("Recent Item")
                                .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.all)
                            .shadow(radius: 5)
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
                            Text("Converters")
                                .font(.title2.bold())
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.all)
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
                .shadow(radius: 5)
            }
        }
    }
    struct Homeview_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
